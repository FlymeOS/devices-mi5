.class public Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "MiuiSecurityFingerprintSettings.java"


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private se:Landroid/preference/PreferenceCategory;

.field private sf:Ljava/util/List;

.field private sj:Z

.field private sm:Landroid/preference/PreferenceCategory;

.field private sn:Ljava/util/List;

.field private so:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sj:Z

    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c1117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    return-void
.end method

.method private K(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vendorsettings/df;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private V(I)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->J(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fy()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(II)V
    .locals 1

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fG()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fI()V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_0
    .end packed-switch
.end method

.method private fA()V
    .locals 6

    .prologue
    .line 156
    new-instance v0, Lcom/android/vendorsettings/cZ;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sn:Ljava/util/List;

    .line 159
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fK()V

    .line 160
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fz()V

    .line 161
    new-instance v3, Lcom/android/vendorsettings/fe;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/fe;-><init>(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V

    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->se:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 178
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sm:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 180
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/vendorsettings/df;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fB()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/android/vendorsettings/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sn:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->se:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sm:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 201
    :cond_2
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 202
    const-string v1, "add_fingerprint"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 203
    const v1, 0x7f0c1108

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 204
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->se:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    return-void
.end method

.method private fB()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x5

    :try_start_0
    new-array v1, v0, [Z

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->K(Ljava/lang/String;)I

    move-result v0

    .line 227
    if-lez v0, :cond_0

    array-length v3, v1

    if-gt v0, v3, :cond_0

    .line 228
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-class v1, Lcom/android/vendorsettings/NewFingerprintActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 232
    :cond_2
    const/4 v0, 0x0

    :goto_2
    :try_start_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 233
    aget-boolean v2, v1, v0

    if-nez v2, :cond_3

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c1107

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private fG()V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_keyguard"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    return-void
.end method

.method private fI()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    const-string v1, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/16 v2, 0x6a

    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 325
    return-void
.end method

.method private fK()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sn:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->so:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->so:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sn:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->so:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sn:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->so:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sn:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->so:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    :cond_2
    return-void
.end method

.method private fx()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sj:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->se:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sm:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fA()V

    goto :goto_0
.end method

.method private fy()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 106
    const v0, 0x7f0c1118

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->V(I)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.securityspace.ui.activity.SetFingerPrintActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fz()V
    .locals 6

    .prologue
    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/vendorsettings/df;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sf:Ljava/util/List;

    new-instance v2, Lcom/android/vendorsettings/fd;

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/fd;-><init>(Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;Ljava/util/Map;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 153
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 128
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v0, "extra_fingerprint_key"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "extra_fingerprint_title"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-class v0, Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v5, 0x7f0c1107

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 133
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 299
    if-eqz p2, :cond_0

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 300
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->b(II)V

    .line 301
    return-void

    :cond_0
    move v2, v1

    .line 299
    goto :goto_0

    :cond_1
    move v0, v1

    .line 300
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->b(II)V

    .line 295
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    const-string v1, "fingerprint_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->so:Ljava/lang/String;

    .line 275
    :cond_0
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 277
    new-instance v0, Lcom/android/vendorsettings/cZ;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->isHardwareDetected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sj:Z

    .line 279
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 286
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 288
    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 87
    :cond_1
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 89
    const-string v0, "fingerprint_list"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->se:Landroid/preference/PreferenceCategory;

    .line 90
    const-string v0, "fingerprint_list_main"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sm:Landroid/preference/PreferenceCategory;

    .line 92
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->fx()V

    goto :goto_0
.end method

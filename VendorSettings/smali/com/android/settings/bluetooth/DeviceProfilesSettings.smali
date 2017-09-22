.class public final Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/b/b/I;


# instance fields
.field private Qn:Lcom/android/b/b/H;

.field private Qp:Landroid/app/AlertDialog;

.field private Rr:Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

.field private Rs:Lcom/android/b/b/R;

.field private Rt:Lcom/android/b/b/U;

.field private Ru:Landroid/preference/PreferenceGroup;

.field private Rv:Landroid/preference/EditTextPreference;

.field private final Rw:Ljava/util/HashMap;

.field private Rx:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rw:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method private a(Lcom/android/b/b/T;)Landroid/preference/CheckBoxPreference;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 235
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v2}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/b/b/T;->j(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 238
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 239
    invoke-interface {p1}, Lcom/android/b/b/T;->nV()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->bk(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 240
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v2}, Lcom/android/b/b/H;->zJ()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    .line 243
    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v2}, Lcom/android/b/b/H;->zE()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 252
    invoke-direct {p0, v1, p1}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Landroid/preference/CheckBoxPreference;Lcom/android/b/b/T;)V

    .line 254
    return-object v1
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/android/b/b/T;)V
    .locals 7

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    .line 322
    invoke-virtual {v1}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const v0, 0x7f0c012d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/b/b/T;->j(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    const v3, 0x7f0c012a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    const v4, 0x7f0c012b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v2, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;Lcom/android/b/b/H;Lcom/android/b/b/T;)V

    .line 341
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qp:Landroid/app/AlertDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/vendorsettings/bluetooth/Utils;->a(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qp:Landroid/app/AlertDialog;

    .line 343
    return-void
.end method

.method private a(Landroid/preference/CheckBoxPreference;Lcom/android/b/b/T;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 379
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 384
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zE()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 385
    instance-of v0, p2, Lcom/android/b/b/Y;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zQ()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    :goto_2
    invoke-interface {p2, v3}, Lcom/android/b/b/T;->k(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 401
    return-void

    :cond_0
    move v0, v2

    .line 384
    goto :goto_0

    :cond_1
    move v1, v2

    .line 386
    goto :goto_1

    .line 389
    :cond_2
    instance-of v0, p2, Lcom/android/b/b/af;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zO()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    .line 393
    :cond_4
    instance-of v0, p2, Lcom/android/b/b/ac;

    if-eqz v0, :cond_6

    .line 394
    invoke-interface {p2, v3}, Lcom/android/b/b/T;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    :goto_4
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_4

    .line 398
    :cond_6
    invoke-interface {p2, v3}, Lcom/android/b/b/T;->h(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private a(Lcom/android/b/b/T;Landroid/preference/CheckBoxPreference;)V
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v3}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 286
    const-string v4, "PBAP Server"

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v3}, Lcom/android/b/b/H;->zO()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 290
    :goto_0
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v3, v0}, Lcom/android/b/b/H;->dW(I)V

    .line 291
    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 316
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 287
    goto :goto_0

    :cond_1
    move v1, v2

    .line 291
    goto :goto_1

    .line 295
    :cond_2
    invoke-interface {p1, v3}, Lcom/android/b/b/T;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 296
    if-ne v4, v0, :cond_3

    move v0, v1

    .line 299
    :goto_3
    if-eqz v0, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Landroid/content/Context;Lcom/android/b/b/T;)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 296
    goto :goto_3

    .line 302
    :cond_4
    invoke-interface {p1, v3}, Lcom/android/b/b/T;->h(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    instance-of v0, p1, Lcom/android/b/b/ac;

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, p1}, Lcom/android/b/b/H;->d(Lcom/android/b/b/T;)V

    .line 310
    :goto_4
    invoke-direct {p0, p2, p1}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Landroid/preference/CheckBoxPreference;Lcom/android/b/b/T;)V

    goto :goto_2

    .line 308
    :cond_5
    invoke-interface {p1, v3, v2}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_4

    .line 312
    :cond_6
    invoke-interface {p1, v3, v1}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, p1}, Lcom/android/b/b/H;->d(Lcom/android/b/b/T;)V

    goto :goto_2
.end method

.method private bk(I)I
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private f(Landroid/preference/Preference;)Lcom/android/b/b/T;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 404
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 407
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rt:Lcom/android/b/b/U;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/b/b/U;->ct(Ljava/lang/String;)Lcom/android/b/b/T;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private nN()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 193
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Lcom/android/b/b/T;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zO()I

    move-result v0

    .line 199
    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Ak()Lcom/android/b/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/U;->As()Lcom/android/b/b/af;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Lcom/android/b/b/T;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Ak()Lcom/android/b/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/U;->At()Lcom/android/b/b/Y;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v1}, Lcom/android/b/b/H;->zQ()I

    move-result v1

    .line 207
    if-eqz v1, :cond_2

    .line 208
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Lcom/android/b/b/T;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->nO()V

    .line 213
    return-void
.end method

.method private nO()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 217
    iget-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rx:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rx:Z

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-boolean v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rx:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rx:Z

    goto :goto_0
.end method

.method private nP()V
    .locals 6

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 360
    if-nez v1, :cond_0

    .line 361
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Lcom/android/b/b/T;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Landroid/preference/CheckBoxPreference;Lcom/android/b/b/T;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zM()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_2

    .line 370
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " from profile list"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 374
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->nO()V

    .line 375
    return-void
.end method

.method private nQ()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->zy()V

    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, v1}, Lcom/android/b/b/J;->i(Lcom/android/b/b/H;)V

    .line 425
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->nP()V

    .line 355
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nn()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 347
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 117
    :goto_0
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 119
    const-string v0, "profile_container"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Ru:Landroid/preference/PreferenceGroup;

    .line 120
    const-string v0, "rename_device"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    .line 122
    if-nez v1, :cond_1

    .line 123
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "Activity started without a remote Bluetooth device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 146
    :goto_1
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rr:Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 128
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    invoke-virtual {v2}, Lcom/android/b/b/R;->Ak()Lcom/android/b/b/U;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rt:Lcom/android/b/b/U;

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    if-nez v0, :cond_2

    .line 134
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "Device not found, cannot connect to it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->nN()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qp:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qp:Landroid/app/AlertDialog;

    .line 155
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, p0}, Lcom/android/b/b/H;->b(Lcom/android/b/b/I;)V

    .line 188
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/b/b/R;->cP(Landroid/content/Context;)V

    .line 189
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/b/b/H;->setName(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->f(Landroid/preference/Preference;)Lcom/android/b/b/T;

    move-result-object v1

    .line 274
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->a(Lcom/android/b/b/T;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->nQ()V

    .line 262
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rs:Lcom/android/b/b/R;

    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/b/b/R;->cP(Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0, p0}, Lcom/android/b/b/H;->a(Lcom/android/b/b/I;)V

    .line 169
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rr:Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Rv:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 176
    instance-of v2, v0, Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 177
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 178
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    :cond_1
    return-void

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DeviceProfilesSettings;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    return-void
.end method

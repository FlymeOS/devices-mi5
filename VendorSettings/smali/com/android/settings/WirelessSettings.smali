.class public Lcom/android/vendorsettings/WirelessSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field public static final ig:Lcom/android/vendorsettings/search/l;


# instance fields
.field private aN:Landroid/os/UserManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mCm:Landroid/net/ConnectivityManager;

.field private uA:Landroid/preference/PreferenceScreen;

.field private uC:Ljava/lang/String;

.field private uj:Lcom/android/vendorsettings/n;

.field private uk:Landroid/preference/CheckBoxPreference;

.field private ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

.field private um:Landroid/nfc/NfcAdapter;

.field private un:Lcom/android/vendorsettings/fV;

.field private uo:Lcom/android/vendorsettings/nfc/NfcSeRoute;

.field private up:Ljava/util/HashSet;

.field private uz:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Lcom/android/vendorsettings/iJ;

    invoke-direct {v0}, Lcom/android/vendorsettings/iJ;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/WirelessSettings;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->up:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/WirelessSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 559
    const v0, 0x7f0c09b3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/android/vendorsettings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gl()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    const-string v0, "onManageMobilePlanClick:"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 156
    iput-object v4, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/vendorsettings/WirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 162
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/android/vendorsettings/WirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 167
    const-string v0, "WirelessSettings"

    const-string v3, "Multiple matching carrier apps found, launching the first."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    const-string v0, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManageMobilePlanClick: message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    const v1, 0x7f0c0505

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 201
    :cond_4
    iput-object v4, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 207
    :cond_5
    iput-object v4, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_6
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_7

    .line 212
    const v1, 0x7f0c0507

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 215
    :cond_7
    const v1, 0x7f0c0508

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 548
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 549
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uj:Lcom/android/vendorsettings/n;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/vendorsettings/WirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/n;->a(ZZ)V

    .line 554
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 555
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    if-eqz p1, :cond_0

    .line 259
    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mManageMobilePlanMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 263
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 264
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    .line 266
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->aN:Landroid/os/UserManager;

    .line 269
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move v0, v6

    .line 270
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/vendorsettings/WirelessSettings;->up:Ljava/util/HashSet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 278
    if-eqz v0, :cond_18

    move v7, v8

    .line 280
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 281
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 283
    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 284
    const-string v2, "nfc_payment"

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 285
    const-string v3, "toggle_nsd"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 287
    const-string v4, "se_route"

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 290
    new-instance v5, Lcom/android/vendorsettings/n;

    iget-object v11, p0, Lcom/android/vendorsettings/WirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, v10, v11}, Lcom/android/vendorsettings/n;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v5, p0, Lcom/android/vendorsettings/WirelessSettings;->uj:Lcom/android/vendorsettings/n;

    .line 293
    const-string v5, "support_se_route"

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 294
    new-instance v5, Lcom/android/vendorsettings/nfc/NfcEnabler;

    invoke-direct {v5, v10, v0, v1, v4}, Lcom/android/vendorsettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;)V

    iput-object v5, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    .line 299
    :goto_2
    const-string v5, "wifi_calling_settings"

    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/vendorsettings/WirelessSettings;->uA:Landroid/preference/PreferenceScreen;

    .line 302
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    if-nez v7, :cond_1a

    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x1120069

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v8

    .line 311
    :goto_3
    if-eqz v3, :cond_2

    iget-object v11, p0, Lcom/android/vendorsettings/WirelessSettings;->aN:Landroid/os/UserManager;

    const-string v12, "no_config_mobile_networks"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 314
    const-string v11, "wimax_settings"

    invoke-virtual {p0, v11}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 315
    if-eqz v11, :cond_3

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    const-string v3, "wifi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 326
    :cond_4
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v11, "toggle_airplane"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 329
    :cond_5
    if-nez v7, :cond_6

    iget-object v3, p0, Lcom/android/vendorsettings/WirelessSettings;->aN:Landroid/os/UserManager;

    const-string v11, "no_config_vpn"

    invoke-virtual {v3, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    :cond_6
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->U(Ljava/lang/String;)V

    .line 334
    :cond_7
    if-eqz v5, :cond_8

    const-string v3, "bluetooth"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 339
    :cond_8
    if-eqz v5, :cond_9

    const-string v3, "nfc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 340
    :cond_9
    const-string v3, "toggle_nfc"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v5, "toggle_airplane"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 341
    const-string v3, "android_beam_settings"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v5, "toggle_airplane"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 345
    :cond_a
    invoke-static {v10}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/WirelessSettings;->um:Landroid/nfc/NfcAdapter;

    .line 349
    iget-object v3, p0, Lcom/android/vendorsettings/WirelessSettings;->um:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_1d

    .line 353
    const-string v3, "nfc_category"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 354
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 355
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 360
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_b
    iput-object v9, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    move-object v0, v9

    .line 379
    :goto_5
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 380
    :cond_c
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_d
    if-nez v7, :cond_e

    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->aN:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 388
    :cond_e
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->U(Ljava/lang/String;)V

    .line 389
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->U(Ljava/lang/String;)V

    .line 393
    :cond_f
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 396
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    and-int/2addr v0, v1

    .line 398
    if-nez v0, :cond_10

    .line 399
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_10

    .line 401
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->U(Ljava/lang/String;)V

    .line 406
    :cond_10
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 407
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->U(Ljava/lang/String;)V

    .line 411
    :cond_11
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 412
    const-string v0, "device_policy"

    invoke-virtual {v10, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 415
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v8

    :goto_6
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 419
    const-string v0, "connectivity"

    invoke-virtual {v10, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 421
    if-nez v7, :cond_12

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->aN:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 423
    :cond_12
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    :cond_13
    :goto_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 448
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/b/a;->aW(Landroid/content/Context;)V

    .line 450
    if-eqz v0, :cond_23

    .line 451
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    move v0, v6

    .line 456
    :cond_14
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    invoke-static {v1}, Lcom/android/vendorsettings/b/a;->c(Landroid/content/pm/PackageManager;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_22

    .line 465
    :goto_8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    and-int/2addr v0, v8

    .line 466
    if-nez v7, :cond_15

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->aN:Landroid/os/UserManager;

    const-string v1, "no_config_cell_broadcasts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 468
    :cond_15
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 469
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    :cond_16
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 476
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    .line 477
    const-string v0, "wfd_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 478
    const-string v2, "support_nvdia_wifi_display"

    invoke-static {v2, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-nez v1, :cond_17

    .line 482
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 485
    :cond_17
    return-void

    :cond_18
    move v7, v6

    .line 278
    goto/16 :goto_1

    .line 296
    :cond_19
    new-instance v5, Lcom/android/vendorsettings/nfc/NfcEnabler;

    invoke-direct {v5, v10, v0, v1, v9}, Lcom/android/vendorsettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;)V

    iput-object v5, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    goto/16 :goto_2

    :cond_1a
    move v3, v6

    .line 309
    goto/16 :goto_3

    .line 317
    :cond_1b
    if-eqz v5, :cond_1c

    const-string v11, "wimax"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz v3, :cond_3

    .line 319
    :cond_1c
    const-string v3, "wimax_settings"

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 320
    const-string v11, "toggle_airplane"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 366
    :cond_1d
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 368
    new-instance v0, Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-direct {v0, v10}, Lcom/android/vendorsettings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rX()Ljava/util/List;

    move-result-object v0

    .line 371
    :goto_9
    const-string v1, "support_se_route"

    invoke-static {v1, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 372
    new-instance v1, Lcom/android/vendorsettings/nfc/NfcSeRoute;

    iget-object v3, p0, Lcom/android/vendorsettings/WirelessSettings;->um:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v10, v3, v4}, Lcom/android/vendorsettings/nfc/NfcSeRoute;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/preference/ListPreference;)V

    iput-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uo:Lcom/android/vendorsettings/nfc/NfcSeRoute;

    goto/16 :goto_5

    .line 374
    :cond_1e
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_1f
    move v0, v6

    .line 416
    goto/16 :goto_6

    .line 425
    :cond_20
    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_13

    .line 432
    invoke-static {v0}, Lcom/android/vendorsettings/iC;->b(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/TetherSettings;->W(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v8

    :goto_a
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_21
    move v0, v6

    goto :goto_a

    .line 461
    :catch_0
    move-exception v0

    move v8, v6

    .line 462
    goto/16 :goto_8

    :cond_22
    move v8, v0

    goto/16 :goto_8

    :cond_23
    move v8, v0

    goto/16 :goto_8

    :cond_24
    move-object v0, v9

    goto :goto_9
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 243
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/vendorsettings/iI;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/iI;-><init>(Lcom/android/vendorsettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 530
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 532
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uj:Lcom/android/vendorsettings/n;

    invoke-virtual {v0}, Lcom/android/vendorsettings/n;->pause()V

    .line 533
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/NfcEnabler;->pause()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->un:Lcom/android/vendorsettings/fV;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->un:Lcom/android/vendorsettings/fV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fV;->pause()V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uo:Lcom/android/vendorsettings/nfc/NfcSeRoute;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uo:Lcom/android/vendorsettings/nfc/NfcSeRoute;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/NfcSeRoute;->pause()V

    .line 544
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    :goto_0
    return v0

    .line 141
    :cond_0
    const-string v1, "manage_mobile_plan"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->gl()V

    .line 150
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 144
    :cond_2
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/b/a;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 491
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uj:Lcom/android/vendorsettings/n;

    invoke-virtual {v0}, Lcom/android/vendorsettings/n;->resume()V

    .line 492
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->ul:Lcom/android/vendorsettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/NfcEnabler;->resume()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->un:Lcom/android/vendorsettings/fV;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->un:Lcom/android/vendorsettings/fV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fV;->resume()V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uo:Lcom/android/vendorsettings/nfc/NfcSeRoute;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uo:Lcom/android/vendorsettings/nfc/NfcSeRoute;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/NfcSeRoute;->resume()V

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    .line 514
    const-string v0, "wifi_calling_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/WirelessSettings;->U(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 523
    iget-object v0, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/vendorsettings/WirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x6e

    return v0
.end method

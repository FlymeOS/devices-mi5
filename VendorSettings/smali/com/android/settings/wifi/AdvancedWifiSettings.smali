.class public Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aAa:Landroid/preference/PreferenceCategory;

.field private azV:Landroid/net/NetworkScoreManager;

.field private azW:Lcom/android/vendorsettings/AppListSwitchPreference;

.field private azX:Landroid/app/Dialog;

.field private azY:Landroid/preference/Preference;

.field private azZ:Landroid/preference/Preference;

.field private je:Landroid/net/wifi/WifiManager;

.field private mG:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/android/vendorsettings/wifi/d;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/d;-><init>(Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 345
    if-eqz p2, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a001f

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 350
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 351
    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 353
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :goto_2
    return-void

    .line 347
    :cond_0
    const v0, 0x7f0a001e

    goto :goto_0

    .line 350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    const-string v0, "AdvancedWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sleep policy value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->wS()V

    return-void
.end method

.method private b(Landroid/preference/Preference;I)V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 366
    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 333
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 334
    new-array v2, v0, [Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    .line 336
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 337
    iget-object v0, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 339
    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azW:Lcom/android/vendorsettings/AppListSwitchPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azV:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/vendorsettings/AppListSwitchPreference;->a([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method private iW()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v1, "com.android.certinstaller"

    const-string v4, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "install_as_uid"

    const/16 v4, 0x3f2

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v1, "install_credentials"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 206
    const-string v0, "wifi_assistant"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/AppListSwitchPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azW:Lcom/android/vendorsettings/AppListSwitchPreference;

    .line 207
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 209
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 210
    iget-object v4, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azW:Lcom/android/vendorsettings/AppListSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/android/vendorsettings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->b(Ljava/util/Collection;)V

    .line 216
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/vendorsettings/Settings$WifiP2pSettingsActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v4, "wifi_direct"

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 219
    if-eqz v4, :cond_flyme_0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_flyme_0
    const-string v0, "frequency_band"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 244
    iget-object v4, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 245
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    iget-object v4, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v4

    .line 247
    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 248
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, v0, v4}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->b(Landroid/preference/Preference;I)V

    .line 260
    :cond_2
    :goto_1
    const-string v0, "sleep_policy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 261
    if-eqz v0, :cond_4

    .line 262
    invoke-static {v1}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 265
    :cond_3
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_sleep_policy"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 269
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 275
    :cond_4
    const-string v0, "priority_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 277
    if-eqz v0, :cond_5

    .line 278
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_d

    .line 279
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_priority_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    :cond_5
    :goto_3
    const-string v0, "connect_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 289
    if-eqz v0, :cond_6

    .line 290
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_e

    .line 291
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_connect_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 293
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    :cond_6
    :goto_4
    const-string v0, "select_ssid_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 301
    if-eqz v0, :cond_7

    .line 302
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_f

    .line 303
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_select_ssid_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 305
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 313
    :cond_7
    :goto_5
    const-string v0, "dialog_remind_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 314
    if-eqz v0, :cond_8

    .line 315
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_11

    .line 316
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_dialog_remind_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_10

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 319
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    :cond_8
    :goto_7

    return-void

    const-string v0, "wifi_scan_always_available"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 327
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_12

    :goto_8
    #invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    return-void

    .line 212
    :cond_9
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azW:Lcom/android/vendorsettings/AppListSwitchPreference;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azW:Lcom/android/vendorsettings/AppListSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 251
    :cond_a
    const-string v0, "AdvancedWifiSettings"

    const-string v4, "Failed to fetch frequency band"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 254
    :cond_b
    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_c
    move v1, v3

    .line 279
    goto/16 :goto_2

    .line 284
    :cond_d
    const-string v0, "priority_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->U(Ljava/lang/String;)V

    .line 285
    const-string v0, "priority_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->U(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 297
    :cond_e
    const-string v0, "connect_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->U(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 309
    :cond_f
    const-string v0, "select_ssid_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->U(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move v1, v3

    .line 316
    goto :goto_6

    .line 321
    :cond_11
    const-string v0, "dialog_remind_type"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->U(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    move v2, v3

    .line 327
    goto :goto_8
.end method

.method private wS()V
    .locals 6

    .prologue
    const v5, 0x7f0c042b

    const/4 v4, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 495
    const-string v2, "mac_address"

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 496
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 497
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    #invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    #invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    if-eqz v2, :cond_flyme_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_flyme_0

    .line 501
    const-string v0, "current_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 502
    invoke-static {v1}, Lcom/android/vendorsettings/iC;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 503
    if-nez v0, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    #invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    #invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    if-eqz v2, :cond_flyme_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_flyme_1

    .line 506
    return-void

    .line 496
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private wT()V
    .locals 1

    .prologue
    .line 532
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 536
    :cond_0
    return-void
.end method

.method private wU()V
    .locals 1

    .prologue
    .line 538
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 542
    :cond_0
    return-void
.end method

.method private wV()V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Lcom/android/vendorsettings/wifi/X;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/wifi/X;-><init>(Landroid/content/Context;)V

    .line 560
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/X;->setMode(I)V

    .line 561
    const v1, 0x7f0c0e19

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/X;->setTitle(I)V

    .line 562
    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azX:Landroid/app/Dialog;

    .line 563
    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/X;->show()V

    .line 564
    return-void
.end method

.method private wW()V
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/android/vendorsettings/wifi/X;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/wifi/X;-><init>(Landroid/content/Context;)V

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/X;->setMode(I)V

    .line 569
    const v1, 0x7f0c0e1d

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/X;->setTitle(I)V

    .line 570
    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azX:Landroid/app/Dialog;

    .line 571
    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/X;->show()V

    .line 572
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->je:Landroid/net/wifi/WifiManager;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mG:Landroid/content/IntentFilter;

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azV:Landroid/net/NetworkScoreManager;

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 131
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azY:Landroid/preference/Preference;

    .line 132
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azZ:Landroid/preference/Preference;

    .line 133
    const-string v0, "wapi_cert_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->aAa:Landroid/preference/PreferenceCategory;

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azX:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azX:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 182
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 406
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 408
    const-string v1, "frequency_band"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 411
    iget-object v6, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->je:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 412
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->b(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    const-string v1, "sleep_policy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 449
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_sleep_policy"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->a(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    :cond_1
    const-string v1, "priority_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 461
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 462
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_priority_type"

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    :cond_2
    :goto_1
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azY:Landroid/preference/Preference;

    .line 486
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azZ:Landroid/preference/Preference;

    move v3, v2

    .line 488
    :goto_2
    return v3

    .line 413
    :catch_0
    move-exception v1

    .line 414
    const v1, 0x7f0c0342

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 418
    :cond_3
    const-string v1, "wifi_assistant"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    check-cast p2, Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    .line 421
    if-nez v1, :cond_4

    .line 422
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azV:Landroid/net/NetworkScoreManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v3, v2

    .line 423
    goto :goto_2

    .line 426
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 427
    iget-object v4, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 431
    iget-object v4, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 435
    :cond_5
    const-string v4, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v4, "packageName"

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 452
    :catch_1
    move-exception v1

    .line 453
    const v1, 0x7f0c02e7

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v1, v3

    .line 462
    goto :goto_0

    .line 464
    :cond_7
    const-string v1, "connect_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connect_type"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    const-string v1, "connect_type"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 469
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 471
    :cond_8
    const-string v1, "select_ssid_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 472
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_select_ssid_type"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    const-string v1, "select_ssid_type"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 476
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 478
    :cond_9
    const-string v1, "dialog_remind_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 480
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_dialog_remind_type"

    if-eqz v1, :cond_a

    move v3, v2

    :cond_a
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 548
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 549
    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v2

    .line 550
    :cond_1
    const-string v1, "wapi_cert_install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->wV()V

    goto :goto_0

    .line 552
    :cond_2
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->wW()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const v5, 0x7f0c0f23

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v6

    :cond_0
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    :goto_0
    return v6

    .line 378
    :cond_1
    const-string v1, "wifi_scan_always_available"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    :cond_2
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 382
    :cond_3
    const-string v1, "wps_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 385
    :cond_4
    const-string v1, "wps_pin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 387
    const-string v0, "wps_setup"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 390
    :cond_5
    const-string v1, "priority_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 392
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiPrioritySettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 398
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->iW()V

    .line 153
    const-string v0, "support_wapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->wT()V

    .line 156
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->wU()V

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->mG:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->wS()V

    .line 166
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->aAa:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->aAa:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    iput-object v2, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azY:Landroid/preference/Preference;

    .line 160
    iput-object v2, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->azZ:Landroid/preference/Preference;

    .line 161
    iput-object v2, p0, Lcom/android/vendorsettings/wifi/AdvancedWifiSettings;->aAa:Landroid/preference/PreferenceCategory;

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x68

    return v0
.end method

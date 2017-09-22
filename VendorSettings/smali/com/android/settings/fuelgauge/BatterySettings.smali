.class public Lcom/android/vendorsettings/fuelgauge/BatterySettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "BatterySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aeX:Landroid/preference/ListPreference;

.field private aeY:Landroid/preference/PreferenceCategory;

.field private aeZ:Landroid/preference/ListPreference;

.field private afa:Landroid/preference/Preference;

.field private afb:Landroid/preference/PreferenceScreen;

.field private afc:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/BatterySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySettings$1;-><init>(Lcom/android/vendorsettings/fuelgauge/BatterySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afc:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/BatterySettings;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->qT()V

    return-void
.end method

.method private qT()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "persist.sys.aries.power_profile"

    const-string v1, "middle"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method private qU()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 177
    :try_start_0
    const-string v1, "com.mediatek.gemini.GeminiPowerUsageSummary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    .line 71
    const-string v0, "power_center"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afa:Landroid/preference/Preference;

    .line 72
    const-string v0, "power_hide_mode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afb:Landroid/preference/PreferenceScreen;

    .line 74
    const-string v0, "performance_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeY:Landroid/preference/PreferenceCategory;

    .line 75
    const-string v0, "power_mode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    sget-object v1, Landroid/provider/MiuiSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v0, "fluency_mode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeZ:Landroid/preference/ListPreference;

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afa:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    iput-object v4, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afa:Landroid/preference/Preference;

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_HIDE_MODE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afb:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    iput-object v4, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afb:Landroid/preference/PreferenceScreen;

    .line 94
    :cond_1
    const-string v0, "support_power_mode"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    iput-object v4, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    .line 104
    :goto_0
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteModeSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    iput-object v4, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeZ:Landroid/preference/ListPreference;

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeZ:Landroid/preference/ListPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    if-nez v0, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_3
    return-void

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afc:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "support_power_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->afc:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "power_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    check-cast p2, Ljava/lang/String;

    .line 164
    const-string v0, "persist.sys.aries.power_profile"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "power_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->aeX:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 135
    const-string v0, "power_usage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->qU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v2, "com.mediatek.gemini.GeminiPowerUsageSummary"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0c0dce

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 155
    :goto_0
    return v0

    .line 140
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 144
    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "power_center"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.POWER_MANAGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    :cond_2
    const-string v0, "power_hide_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.POWER_HIDE_MODE_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 155
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySettings;->qT()V

    .line 121
    return-void
.end method

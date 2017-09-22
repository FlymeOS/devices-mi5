.class public Lcom/android/vendorsettings/OtherPersonalSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "OtherPersonalSettings.java"


# instance fields
.field private vA:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private gt()V
    .locals 4

    .prologue
    .line 136
    const-string v0, "locale_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method private gu()Z
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 148
    const-string v2, "com.miui.backup"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 149
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 150
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.miui.backup.hasOneKeyMigrateFeature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/vendorsettings/OtherPersonalSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "development"

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/OtherPersonalSettings;->vA:Landroid/content/SharedPreferences;

    .line 47
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/OtherPersonalSettings;->addPreferencesFromResource(I)V

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "privacy_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "children_mode_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "category_privacy_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "children_mode_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string v0, "children_mode_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    const-string v0, "support_led_light"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string v0, "led_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    const-string v0, "support_headset"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    const-string v0, "headset_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    const-string v0, "support_edge_handgrip"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69
    const-string v0, "edge_mode_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.printservice.PrintService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x84

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 77
    :cond_5
    const-string v0, "print_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_6
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 81
    const-string v0, "handy_mode_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/android/vendorsettings/OtherPersonalSettings;->vA:Landroid/content/SharedPreferences;

    const-string v3, "show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    const-string v0, "development_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_9

    .line 92
    const-string v0, "locale_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_9
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v0

    if-nez v0, :cond_a

    .line 96
    const-string v0, "force_touch_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_a
    invoke-virtual {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 100
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_13

    .line 103
    const-string v3, "Elliptic Proximity"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Elliptic Labs"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.miui.sensor.avoid"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    .line 106
    if-eqz v0, :cond_b

    .line 107
    const-string v0, "avoid_ui"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_b
    invoke-virtual {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 111
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_c
    move v0, v2

    .line 103
    goto :goto_0

    :cond_d
    move v3, v2

    .line 105
    goto :goto_1

    .line 115
    :cond_e
    const-string v0, "one_key_migrate"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v4, :cond_f

    invoke-direct {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->gu()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_10

    .line 117
    :cond_f
    #invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_12

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "privacy_and_backup_cat"

    aput-object v4, v0, v2

    const-string v4, "privacy_settings"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v4, "one_key_migrate"

    aput-object v4, v0, v1

    .line 122
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_12

    aget-object v4, v0, v2

    .line 123
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/OtherPersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 124
    if-eqz v4, :cond_11

    #invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 127
    :cond_12
    return-void

    :cond_13
    move v0, v2

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const-string v1, "entry_level_secondary"

    invoke-static {v1, v0}, Lcom/android/vendorsettings/analytics/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/android/vendorsettings/OtherPersonalSettings;->gt()V

    .line 133
    return-void
.end method

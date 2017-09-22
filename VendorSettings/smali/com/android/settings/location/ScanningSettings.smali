.class public Lcom/android/settings/location/ScanningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScanningSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private hu()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 56
    :cond_0
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/android/settings/location/ScanningSettings;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/location/ScanningSettings;->iW()V

    .line 59
    return-object v0
.end method

.method private iW()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    const-string v0, "wifi_always_scanning"

    invoke-virtual {p0, v0}, Lcom/android/settings/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    const-string v0, "bluetooth_always_scanning"

    invoke-virtual {p0, v0}, Lcom/android/settings/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 71
    return-void

    :cond_0
    move v1, v3

    .line 65
    goto :goto_0

    :cond_1
    move v2, v3

    .line 69
    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "wifi_always_scanning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    :goto_0
    return v1

    .line 80
    :cond_1
    const-string v3, "bluetooth_always_scanning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ble_scan_always_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 85
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/location/ScanningSettings;->hu()Landroid/preference/PreferenceScreen;

    .line 49
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x83

    return v0
.end method

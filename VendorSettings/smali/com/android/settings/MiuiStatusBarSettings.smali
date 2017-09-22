.class public Lcom/android/vendorsettings/MiuiStatusBarSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private tI:Landroid/preference/CheckBoxPreference;

.field private tJ:Landroid/preference/CheckBoxPreference;

.field private tK:Landroid/preference/CheckBoxPreference;

.field private tL:Landroid/preference/CheckBoxPreference;

.field private tM:Landroid/preference/CheckBoxPreference;

.field private tN:Lmiui/preference/ValuePreference;

.field private tO:Landroid/preference/ListPreference;

.field private tP:Landroid/preference/ListPreference;

.field private tQ:Landroid/preference/PreferenceScreen;

.field private tR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private M(Z)V
    .locals 2

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/vendorsettings/MiuiStatusBarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->addPreferencesFromResource(I)V

    .line 77
    const-string v0, "status_bar_style"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v0, "toggle_sort"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tQ:Landroid/preference/PreferenceScreen;

    .line 82
    const-string v0, "show_notification_icon"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tI:Landroid/preference/CheckBoxPreference;

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    const-string v0, "show_network_speed"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tJ:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tR:Z

    .line 91
    const-string v0, "custom_carrier"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tN:Lmiui/preference/ValuePreference;

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tN:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 94
    const-string v0, "show_carrier"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tR:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tN:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    const-string v0, "battery_indicator"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    const-string v0, "toggle_collapse_after_clicked"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tL:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    const-string v0, "expandable_under_keyguard"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tK:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "show_network_speed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setShowNetworkSpeed(Landroid/content/Context;Z)V

    .line 192
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_1
    const-string v1, "show_carrier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Landroid/app/MiuiStatusBarManager;->setShowCarrier(Landroid/content/Context;Z)V

    .line 161
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->M(Z)V

    goto :goto_0

    .line 163
    :cond_2
    const-string v1, "expandable_under_keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguard(Landroid/content/Context;Z)V

    goto :goto_0

    .line 166
    :cond_3
    const-string v1, "toggle_collapse_after_clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setCollapseAfterClicked(Landroid/content/Context;Z)V

    goto :goto_0

    .line 169
    :cond_4
    const-string v1, "show_notification_icon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->setShowNotificationIcon(Landroid/content/Context;Z)V

    goto :goto_0

    .line 172
    :cond_5
    const-string v1, "status_bar_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_style_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 182
    :cond_6
    const-string v1, "battery_indicator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 185
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 188
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tN:Lmiui/preference/ValuePreference;

    if-ne p2, v0, :cond_2

    .line 198
    const-string v2, "com.android.settings.CarrierCustomEditFragment"

    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tR:Z

    if-eqz v0, :cond_1

    const v5, 0x7f0c00af

    :goto_0
    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 215
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 198
    :cond_1
    const v5, 0x7f0c00b4

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tQ:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "com.android.settings.ToggleArrangementFragment"

    :goto_2
    const v5, 0x7f0c00b5

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_1

    :cond_3
    const-string v2, "com.android.settings.TogglePositionFragment"

    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    .line 123
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status_bar_custom_carrier"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 128
    aget-object v2, v5, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v5, v0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v2, ""

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 128
    goto :goto_1

    :cond_1
    const-string v2, " | "

    goto :goto_2

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tN:Lmiui/preference/ValuePreference;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->isShowCarrier(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->M(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "battery_indicator_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    iget-object v2, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 137
    iget-object v2, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tO:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiStatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiStatusBarSettings;->tP:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_3
    return-void

    .line 140
    :cond_4
    const/4 v1, 0x1

    goto :goto_3
.end method

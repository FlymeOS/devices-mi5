.class public Lcom/android/settings/LedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private lO:Landroid/preference/CheckBoxPreference;

.field private oJ:Landroid/preference/ListPreference;

.field private oK:Landroid/preference/ListPreference;

.field private oL:Landroid/preference/ListPreference;

.field private oM:Landroid/preference/ListPreference;

.field private oN:Landroid/preference/ListPreference;

.field private oO:Landroid/preference/ListPreference;

.field private oP:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/ListPreference;IZ)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/LedSettings;->b(Landroid/preference/ListPreference;IZ)I

    move-result v0

    .line 144
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private b(Landroid/preference/ListPreference;IZ)I
    .locals 5

    .prologue
    .line 150
    const/4 v1, -0x1

    .line 151
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 154
    if-eqz p3, :cond_1

    .line 155
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 159
    :goto_1
    if-ne p2, v1, :cond_2

    .line 160
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 161
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    return v0

    .line 157
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 151
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/LedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v5, 0x7f0a0082

    const v4, 0x7f0a0081

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0c0df5

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 46
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->lO:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/LedSettings;->lO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v0, "breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oJ:Landroid/preference/ListPreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v0, "breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oK:Landroid/preference/ListPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oK:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v0, "call_breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v0, "call_breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    .line 57
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v0, "mms_breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v0, "mms_breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    .line 62
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x110d0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_breathing_light_color"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    iget-object v5, p0, Lcom/android/settings/LedSettings;->oJ:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 85
    iget-object v3, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1106000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_breathing_light_freq"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_freq"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    iget-object v5, p0, Lcom/android/settings/LedSettings;->oK:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v3, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 98
    iget-object v3, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 99
    iget-object v3, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 102
    iget-object v3, p0, Lcom/android/settings/LedSettings;->lO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "notification_light_pulse"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oK:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oK:Landroid/preference/ListPreference;

    .line 110
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    .line 111
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oL:Landroid/preference/ListPreference;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oM:Landroid/preference/ListPreference;

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oN:Landroid/preference/ListPreference;

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    iput-object v7, p0, Lcom/android/settings/LedSettings;->oO:Landroid/preference/ListPreference;

    .line 135
    :cond_5
    const-string v0, "battery_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->oP:Landroid/preference/CheckBoxPreference;

    .line 136
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/LedSettings;->oP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_light_turn_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    return-void

    :cond_6
    move v0, v2

    .line 102
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 137
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 170
    const/4 v3, -0x1

    .line 172
    const-string v4, "breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 232
    :goto_0
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 233
    check-cast p1, Landroid/preference/ListPreference;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/LedSettings;->b(Landroid/preference/ListPreference;IZ)I

    .line 235
    :cond_0
    return v1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 180
    goto :goto_0

    .line 181
    :cond_1
    const-string v4, "breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v3

    .line 187
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 189
    :cond_2
    const-string v4, "call_breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 193
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    .line 197
    goto :goto_0

    .line 195
    :catch_2
    move-exception v2

    .line 196
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 197
    goto :goto_0

    .line 198
    :cond_3
    const-string v4, "call_breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 201
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 203
    :catch_3
    move-exception v3

    .line 204
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    :cond_4
    const-string v4, "mms_breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 210
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mms_breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move v2, v1

    .line 214
    goto/16 :goto_0

    .line 212
    :catch_4
    move-exception v2

    .line 213
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 214
    goto/16 :goto_0

    .line 215
    :cond_5
    const-string v4, "mms_breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 220
    :catch_5
    move-exception v3

    .line 221
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 223
    :cond_6
    const-string v4, "notification_pulse"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 224
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse"

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v3

    .line 227
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 225
    goto :goto_1

    .line 227
    :cond_8
    const-string v4, "battery_light"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 228
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_turn_on"

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_2
.end method

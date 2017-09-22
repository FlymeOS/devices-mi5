.class public Lcom/android/settings/dndmode/k;
.super Lcom/android/settings/dndmode/q;
.source "DoNotDisturbModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aaA:Landroid/preference/PreferenceScreen;

.field private aaB:Landroid/preference/CheckBoxPreference;

.field private final aaC:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private aav:Lmiui/app/Activity;

.field private aaw:Landroid/preference/CheckBoxPreference;

.field private aax:Landroid/preference/PreferenceGroup;

.field private aay:Landroid/preference/CheckBoxPreference;

.field private aaz:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/dndmode/q;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/dndmode/l;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/l;-><init>(Lcom/android/settings/dndmode/k;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aaC:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/k;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/dndmode/k;->pX()V

    return-void
.end method

.method private pX()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    return-void
.end method

.method private pY()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 141
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "type=\'3\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 151
    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    if-eqz v1, :cond_2

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v6

    .line 155
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 149
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    if-eqz v1, :cond_2

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_3

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 151
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 148
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private pZ()V
    .locals 7

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dndmode/m;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/dndmode/m;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/android/settings/dndmode/k;->aaz:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/dndmode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0b9a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/dndmode/q;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->addPreferencesFromResource(I)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->setHasOptionsMenu(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/dndmode/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    .line 60
    const-string v0, "key_do_not_disturb_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aaw:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string v0, "key_auto_setting_group"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aax:Landroid/preference/PreferenceGroup;

    .line 63
    const-string v0, "key_auto_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aay:Landroid/preference/CheckBoxPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v0, "key_auto_time_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aaz:Landroid/preference/PreferenceScreen;

    .line 66
    const-string v0, "key_vip_call_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aaA:Landroid/preference/PreferenceScreen;

    .line 67
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    const-string v0, "key_repeated_call_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aaC:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aaC:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 170
    invoke-super {p0}, Lcom/android/settings/dndmode/q;->onDestroy()V

    .line 171
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 115
    check-cast p2, Ljava/lang/Boolean;

    .line 116
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaw:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 137
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aay:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 121
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aax:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aaz:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->bv(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/dndmode/k;->pZ()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aax:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aaz:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setRepeatedCallActionEnable(Landroid/content/Context;Z)V

    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0bb2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0bb1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 80
    invoke-super {p0}, Lcom/android/settings/dndmode/q;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaA:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0ba6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aax:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aaz:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 98
    invoke-direct {p0}, Lcom/android/settings/dndmode/k;->pZ()V

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0bb1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 111
    :goto_2
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aav:Lmiui/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaA:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/dndmode/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ba7

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/dndmode/k;->pY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_2
    if-ne v0, v5, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaA:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0ba8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aax:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/dndmode/k;->aaz:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/dndmode/k;->aaB:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0bb2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2
.end method

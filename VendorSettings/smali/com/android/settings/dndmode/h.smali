.class public Lcom/android/settings/dndmode/h;
.super Lcom/android/settings/dndmode/q;
.source "AutoTimeSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private Ze:I

.field private Zf:I

.field private Zg:Z

.field private Zh:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private aan:Landroid/preference/PreferenceScreen;

.field private aao:Landroid/preference/PreferenceCategory;

.field private aap:Lcom/android/settings/dndmode/LabelPreference;

.field private aaq:Lcom/android/settings/dndmode/LabelPreference;

.field private aar:Lcom/android/settings/dndmode/RepeatPreference;

.field private aas:Landroid/preference/CheckBoxPreference;

.field private aat:Landroid/database/ContentObserver;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/dndmode/q;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/dndmode/i;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/i;-><init>(Lcom/android/settings/dndmode/h;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->Zh:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    .line 74
    new-instance v0, Lcom/android/settings/dndmode/j;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dndmode/j;-><init>(Lcom/android/settings/dndmode/h;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aat:Landroid/database/ContentObserver;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/h;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/dndmode/h;->Ze:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/dndmode/h;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/settings/dndmode/h;->Zg:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/h;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/h;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/h;->bK(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bK(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/dndmode/h;->bL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bL(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/dndmode/h;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/settings/dndmode/h;->Ze:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/dndmode/h;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/dndmode/h;->Zf:I

    return p1
.end method

.method static synthetic d(Lcom/android/settings/dndmode/h;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aap:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/dndmode/h;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/settings/dndmode/h;->Zf:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/dndmode/h;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aaq:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/dndmode/h;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aas:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public aX(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "quietWristband"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.antispam"

    const-string v3, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    const-string v1, "mac"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/dndmode/q;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/dndmode/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    .line 94
    const-string v0, "time_setting_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aan:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/h;->Ze:I

    .line 96
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/h;->Zf:I

    .line 97
    const-string v0, "start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aap:Lcom/android/settings/dndmode/LabelPreference;

    .line 98
    const-string v0, "end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aaq:Lcom/android/settings/dndmode/LabelPreference;

    .line 99
    const-string v0, "repeat"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/RepeatPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aar:Lcom/android/settings/dndmode/RepeatPreference;

    .line 100
    const-string v0, "key_quiet_wristband_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aao:Landroid/preference/PreferenceCategory;

    .line 101
    const-string v0, "key_quiet_wristband"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/dndmode/h;->aas:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aap:Lcom/android/settings/dndmode/LabelPreference;

    iget v1, p0, Lcom/android/settings/dndmode/h;->Ze:I

    invoke-direct {p0, v1}, Lcom/android/settings/dndmode/h;->bK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aap:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aaq:Lcom/android/settings/dndmode/LabelPreference;

    iget v1, p0, Lcom/android/settings/dndmode/h;->Zf:I

    invoke-direct {p0, v1}, Lcom/android/settings/dndmode/h;->bK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aaq:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    new-instance v0, Lcom/android/settings/dndmode/b;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/settings/dndmode/b;-><init>(I)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dndmode/b;->l(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/settings/dndmode/h;->aar:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/dndmode/RepeatPreference;->setLabel(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aar:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/dndmode/RepeatPreference;->b(Lcom/android/settings/dndmode/b;)V

    .line 113
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aas:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aas:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietWristband(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_wristband"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dndmode/h;->aat:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->aan:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aao:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aat:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aar:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/settings/dndmode/RepeatPreference;->qa()Lcom/android/settings/dndmode/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dndmode/b;->pS()I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietRepeatType(Landroid/content/Context;I)V

    .line 134
    invoke-super {p0}, Lcom/android/settings/dndmode/q;->onDestroy()V

    .line 135
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 172
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aas:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aas:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/settings/dndmode/h;->aX(Ljava/lang/String;)V

    .line 189
    :goto_0
    return v0

    .line 180
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const-string v2, "miui.bluetooth.extra.MIBLE_PROPERTY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dndmode/h;->pW()V

    goto :goto_0

    .line 189
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 147
    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dndmode/h;->Zh:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/settings/dndmode/h;->Ze:I

    div-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/android/settings/dndmode/h;->Ze:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aap:Lcom/android/settings/dndmode/LabelPreference;

    if-ne p1, v1, :cond_2

    .line 151
    iput-boolean v6, p0, Lcom/android/settings/dndmode/h;->Zg:Z

    .line 152
    iget v1, p0, Lcom/android/settings/dndmode/h;->Ze:I

    if-lez v1, :cond_1

    .line 153
    iget v1, p0, Lcom/android/settings/dndmode/h;->Ze:I

    div-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/android/settings/dndmode/h;->Ze:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 157
    :goto_0
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    .line 167
    :cond_0
    :goto_1
    return v6

    .line 155
    :cond_1
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->aaq:Lcom/android/settings/dndmode/LabelPreference;

    if-ne p1, v1, :cond_0

    .line 159
    iput-boolean v5, p0, Lcom/android/settings/dndmode/h;->Zg:Z

    .line 160
    iget v1, p0, Lcom/android/settings/dndmode/h;->Zf:I

    if-lez v1, :cond_3

    .line 161
    iget v1, p0, Lcom/android/settings/dndmode/h;->Zf:I

    div-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/android/settings/dndmode/h;->Zf:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 165
    :goto_2
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/dndmode/q;->onResume()V

    .line 128
    return-void
.end method

.method public pW()V
    .locals 4

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "quietWristband"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.antispam"

    const-string v3, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    const-string v1, "check"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/android/settings/dndmode/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    return-void
.end method

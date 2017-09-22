.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# instance fields
.field private final akE:Ljava/text/SimpleDateFormat;

.field private alw:Landroid/preference/Preference;

.field private alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->akE:Ljava/text/SimpleDateFormat;

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->sS()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->sQ()V

    return-void
.end method

.method private sQ()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 145
    if-eqz v3, :cond_4

    array-length v0, v3

    if-lez v0, :cond_4

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move v0, v1

    .line 148
    :goto_0
    sget-object v2, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->alr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 149
    sget-object v2, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->alr:[I

    aget v6, v2, v0

    move v2, v1

    .line 150
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_1

    .line 151
    aget v7, v3, v2

    if-ne v6, v7, :cond_2

    .line 152
    const/4 v2, 0x7

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0a9c

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->akE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 169
    :goto_2
    return-void

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    const v1, 0x7f0c0a9a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private sR()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v1, v2

    .line 173
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v2, v3

    .line 174
    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 175
    :goto_0
    if-eqz v1, :cond_0

    const v0, 0x7f0c0ab2

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->cE(I)V

    .line 177
    return-void

    :cond_1
    move v1, v0

    .line 174
    goto :goto_0
.end method

.method private sS()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a99

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0948

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    return-void
.end method


# virtual methods
.method protected b(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected sG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sH()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0c0a8b

    return v0
.end method

.method protected sJ()V
    .locals 4

    .prologue
    .line 83
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 86
    const-string v1, "days"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    .line 87
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 98
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0c0ab0

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->a(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v2, 0x7f0c0ab1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->a(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alw:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected sK()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->sQ()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alx:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->p(II)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->aly:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->alz:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->p(II)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->sR()V

    .line 185
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x90

    return v0
.end method

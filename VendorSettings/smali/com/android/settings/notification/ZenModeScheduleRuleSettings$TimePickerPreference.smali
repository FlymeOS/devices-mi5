.class Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeScheduleRuleSettings.java"


# instance fields
.field private alB:I

.field private alC:I

.field private alD:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mMinute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 225
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setPersistent(Z)V

    .line 227
    new-instance v0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;-><init>(Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alC:I

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method private sT()V
    .locals 5

    .prologue
    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 256
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alC:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 257
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 258
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget v1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alB:I

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alB:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alD:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    .line 240
    return-void
.end method

.method public cE(I)V
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alB:I

    .line 244
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->sT()V

    .line 245
    return-void
.end method

.method public p(II)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alD:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alD:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;->o(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iput p1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->alC:I

    .line 250
    iput p2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    .line 251
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->sT()V

    goto :goto_0
.end method

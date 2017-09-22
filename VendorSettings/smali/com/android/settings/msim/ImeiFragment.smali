.class public Lcom/android/settings/msim/ImeiFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ImeiFragment.java"


# static fields
.field private static final ahJ:[Ljava/lang/String;


# instance fields
.field private ahK:Ljava/lang/String;

.field private ci:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/msim/ImeiFragment;->ahJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private aT(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/msim/ImeiFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/msim/ImeiFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_0
    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object p2, p0, Lcom/android/settings/msim/ImeiFragment;->ahK:Ljava/lang/String;

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/msim/ImeiFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/msim/ImeiFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 165
    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v1, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v1}, Lcom/android/settings/msim/ImeiFragment;->setThemeRes(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/msim/ImeiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotId(Landroid/os/Bundle;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/msim/ImeiFragment;->mSlotId:I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/msim/ImeiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    const v1, 0x7f0800a6

    invoke-virtual {p0, v1}, Lcom/android/settings/msim/ImeiFragment;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/msim/ImeiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->mRes:Landroid/content/res/Resources;

    .line 85
    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ahK:Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/msim/ImeiFragment;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/fy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/msim/ImeiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/iC;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_1
    sget-object v1, Lcom/android/settings/msim/ImeiFragment;->ahJ:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 92
    invoke-direct {p0, v3}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    const-string v0, "meid_number"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "min_number"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/msim/ImeiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "min_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0c041d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 103
    :cond_3
    const-string v0, "prl_version"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "imei_sv"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 108
    const-string v0, "icc_id"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_4
    :goto_1
    return-void

    .line 113
    :cond_5
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    .line 114
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_6
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "imei_sv"

    iget-object v1, p0, Lcom/android/settings/msim/ImeiFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/ImeiFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "prl_version"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    .line 125
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    .line 126
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    .line 127
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->aT(Ljava/lang/String;)V

    goto :goto_1
.end method

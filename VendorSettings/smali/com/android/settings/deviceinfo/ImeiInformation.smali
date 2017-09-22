.class public Lcom/android/settings/deviceinfo/ImeiInformation;
.super Lcom/android/settings/dA;
.source "ImeiInformation.java"


# instance fields
.field private Vf:Z

.field private Vg:Ljava/lang/String;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/dA;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vf:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vg:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/preference/Preference;I)V
    .locals 6

    .prologue
    .line 178
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vf:Z

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ae2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    :cond_1
    return-void
.end method

.method private aT(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_0
    return-void
.end method

.method private bs(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-le p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vf:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->bt(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 67
    :goto_1
    if-ge v1, p1, :cond_1

    .line 68
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->e(ILjava/lang/String;)V

    .line 70
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->bu(I)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method private bt(I)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 79
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Lcom/android/settings/deviceinfo/ImeiInformation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/ImeiInformation$1;-><init>(Lcom/android/settings/deviceinfo/ImeiInformation;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    return-object v2
.end method

.method private bu(I)V
    .locals 7

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 163
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 164
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "meid_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v3, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->a(Landroid/preference/Preference;I)V

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method private e(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 103
    const-string v1, "min_number"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "min_number"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0c041d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 109
    :cond_0
    const-string v1, "prl_version"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "imei_sv"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    .line 112
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 114
    const-string v1, "icc_id"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "imei"

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vg:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 138
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vg:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vg:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    const-string v0, "meid_number"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->Vg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "meid_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    .line 120
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, "imei"

    invoke-direct {p0, v1, p2}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "imei_sv"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "prl_version"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    .line 131
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    .line 132
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_4
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_5
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->aT(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 195
    :cond_0
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/dA;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 56
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->bs(I)V

    .line 59
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x29

    return v0
.end method

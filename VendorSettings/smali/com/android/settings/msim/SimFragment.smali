.class public Lcom/android/vendorsettings/msim/SimFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "SimFragment.java"


# static fields
.field private static final ahJ:[Ljava/lang/String;


# instance fields
.field private WD:Landroid/preference/Preference;

.field private WF:Z

.field private WI:Landroid/content/BroadcastReceiver;

.field private ahK:Ljava/lang/String;

.field private ci:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mSlotId:I

.field private xC:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/msim/SimFragment;->ahJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    .line 90
    new-instance v0, Lcom/android/vendorsettings/msim/c;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/msim/c;-><init>(Lcom/android/vendorsettings/msim/SimFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->xC:Landroid/telephony/PhoneStateListener;

    .line 108
    new-instance v0, Lcom/android/vendorsettings/msim/d;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/msim/d;-><init>(Lcom/android/vendorsettings/msim/SimFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WI:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    const-string v1, "service_state"

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_1
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_0
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/msim/SimFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/msim/SimFragment;->gL()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/msim/SimFragment;Landroid/telephony/ServiceState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/msim/SimFragment;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/msim/SimFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/msim/SimFragment;->aV(Ljava/lang/String;)V

    return-void
.end method

.method private aT(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/msim/SimFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_0
    return-void
.end method

.method private aV(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/msim/SimFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/msim/SimFragment;->gM()V

    return-void
.end method

.method private gL()V
    .locals 4

    .prologue
    const v3, 0x7f0c00f9

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManager;->getDataStateForSlot(I)I

    move-result v1

    .line 263
    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private gM()V
    .locals 2

    .prologue
    .line 246
    .line 247
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getNetworkTypeForSlot(I)I

    move-result v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    const-string v0, "GSM"

    goto :goto_0

    .line 254
    :cond_1
    const-string v0, "CDMA"

    goto :goto_0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p2, p0, Lcom/android/vendorsettings/msim/SimFragment;->ahK:Ljava/lang/String;

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/msim/SimFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/msim/SimFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 240
    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 242
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/telephony/SignalStrength;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 319
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WD:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 324
    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WD:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 331
    if-ne v4, v0, :cond_4

    move v1, v2

    .line 333
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 335
    if-ne v4, v0, :cond_3

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WD:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f0c0100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0101

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 342
    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget v1, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/msim/SimFragment;->setThemeRes(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotId(Landroid/os/Bundle;I)I

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    .line 138
    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/msim/SimFragment;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    .line 141
    iget-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->ahK:Ljava/lang/String;

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/fy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    .line 146
    :cond_0
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/msim/SimFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->WD:Landroid/preference/Preference;

    .line 149
    iget-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    :cond_1
    sget-object v1, Lcom/android/vendorsettings/msim/SimFragment;->ahJ:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    .line 151
    invoke-direct {p0, v3}, Lcom/android/vendorsettings/msim/SimFragment;->aT(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    const-string v0, "br"

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManager;->getSimCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WF:Z

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 164
    const/4 v0, 0x0

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 166
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_4
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/msim/SimFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WF:Z

    if-nez v0, :cond_5

    .line 172
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/msim/SimFragment;->aT(Ljava/lang/String;)V

    .line 175
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    iget-object v2, p0, Lcom/android/vendorsettings/msim/SimFragment;->xC:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WF:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->WI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->mSlotId:I

    iget-object v2, p0, Lcom/android/vendorsettings/msim/SimFragment;->xC:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 185
    iget-boolean v0, p0, Lcom/android/vendorsettings/msim/SimFragment;->WF:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/msim/SimFragment;->WI:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/vendorsettings/msim/SimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

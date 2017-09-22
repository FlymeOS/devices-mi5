.class public Lcom/android/settings/deviceinfo/SimStatus;
.super Lcom/android/settings/dA;
.source "SimStatus.java"


# instance fields
.field private WD:Landroid/preference/Preference;

.field private WE:Landroid/telephony/SubscriptionInfo;

.field private WF:Z

.field private WG:Ljava/lang/String;

.field private WH:Ljava/util/List;

.field private WI:Landroid/content/BroadcastReceiver;

.field private bz:Landroid/widget/ListView;

.field private ci:Lcom/android/internal/telephony/Phone;

.field private gR:Landroid/widget/TabHost;

.field private gT:Landroid/widget/TabWidget;

.field private hT:Landroid/widget/TabHost$TabContentFactory;

.field private hU:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRes:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private xC:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/dA;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    .line 116
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WI:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hU:Landroid/widget/TabHost$OnTabChangeListener;

    .line 467
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->hT:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->xC:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 300
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    packed-switch v1, :pswitch_data_0

    .line 321
    :goto_0
    const-string v1, "service_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_1
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WD:Landroid/preference/Preference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WD:Landroid/preference/Preference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :cond_0
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->aV(Ljava/lang/String;)V

    return-void
.end method

.method private aT(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    :cond_0
    return-void
.end method

.method private aV(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->gL()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->gM()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->xC:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pe()V

    return-void
.end method

.method private gL()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c00fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    packed-switch v1, :pswitch_data_0

    .line 295
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private gM()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 243
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 247
    if-eqz v2, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "config_show4GForLTE"

    const-string v5, "bool"

    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 260
    if-lez v3, :cond_1

    .line 261
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 269
    const-string v0, "4G"

    .line 271
    :cond_2
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 249
    :cond_3
    if-eqz v3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v2

    .line 265
    const-string v2, "SimStatus"

    const-string v3, "NameNotFoundException for show4GFotLTE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    :goto_0
    return-object v0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 405
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pd()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    return-object v0
.end method

.method private pd()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 367
    const-string v0, "br"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WF:Z

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 376
    const/4 v0, 0x0

    .line 377
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_1
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WF:Z

    if-nez v0, :cond_2

    .line 388
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->aT(Ljava/lang/String;)V

    .line 390
    :cond_2
    return-void
.end method

.method private pe()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 413
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    if-nez v0, :cond_1

    .line 416
    const-string v0, "SimStatus"

    const-string v1, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    .line 421
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$2;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/SimStatus;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->xC:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object p2, p0, Lcom/android/settings/deviceinfo/SimStatus;->WG:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    :cond_1
    return-void
.end method

.method private v(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->hT:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/telephony/SignalStrength;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WD:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 342
    if-eq v7, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WD:Landroid/preference/Preference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 349
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 351
    if-ne v4, v2, :cond_3

    move v2, v1

    .line 355
    :cond_3
    if-ne v4, v0, :cond_4

    move v0, v1

    .line 359
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->WD:Landroid/preference/Preference;

    const v5, 0x7f0c0a0d

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/dA;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 141
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    .line 143
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c00d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WG:Ljava/lang/String;

    .line 148
    const-string v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WD:Landroid/preference/Preference;

    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    if-nez v0, :cond_1

    .line 151
    iput-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pe()V

    .line 173
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WE:Landroid/telephony/SubscriptionInfo;

    .line 155
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 156
    const v0, 0x1090044

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setContentView(I)V

    .line 158
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    .line 159
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gT:Landroid/widget/TabWidget;

    .line 160
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->bz:Landroid/widget/ListView;

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->hU:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    move v1, v2

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->gR:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/SimStatus;->v(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 153
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/settings/dA;->onPause()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->xC:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WF:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WI:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/dA;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->pd()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->a(Landroid/telephony/SignalStrength;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->ci:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->a(Landroid/telephony/ServiceState;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->gL()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->xC:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WF:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->WI:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x2b

    return v0
.end method

.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;
.super Ljava/lang/Object;
.source "ImsPhoneCallTrackerInjector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTrackerInjector"

.field private static RIL_RADIO_TECHNOLOGY_LTE_CA:I

.field private static sImsRegistedState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const/16 v2, 0x13

    sput v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->RIL_RADIO_TECHNOLOGY_LTE_CA:I

    .line 25
    const-string v2, "mediatek"

    const-string v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const/16 v2, 0x8b

    sput v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->RIL_RADIO_TECHNOLOGY_LTE_CA:I

    .line 28
    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 29
    .local v1, "numPhones":I
    new-array v2, v1, [I

    sput-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->sImsRegistedState:[I

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 31
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->sImsRegistedState:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isRatLTE(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 61
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 62
    .local v0, "rilDataRadioTech":I
    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->RIL_RADIO_TECHNOLOGY_LTE_CA:I

    if-ne v0, v1, :cond_1

    .line 64
    :cond_0
    const/4 v1, 0x1

    .line 66
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendIMSRegistedStateBroadcast(ZLcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p0, "isImsRegisted"    # Z
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    move v1, p0

    .line 43
    .local v1, "registedStateSent":Z
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->isRatLTE(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v4

    if-nez v4, :cond_3

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 46
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->sImsRegistedState:[I

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    aget v5, v4, v5

    if-eqz v1, :cond_5

    move v4, v2

    :goto_1
    if-eq v5, v4, :cond_0

    .line 49
    if-eq v1, p0, :cond_4

    .line 50
    const-string v4, "ImsPhoneCallTrackerInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendIMSRegistedStateBroadcast: broadcast registed state change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->sImsRegistedState:[I

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eqz v1, :cond_6

    :goto_2
    aput v2, v4, v5

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_IMS_REGISTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 56
    const-string v2, "ImsPhoneCallTrackerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIMSRegistedStateBroadcast: ACTION_IMS_REGISTED isRegisted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    move v4, v3

    .line 46
    goto :goto_1

    :cond_6
    move v2, v3

    .line 52
    goto :goto_2
.end method

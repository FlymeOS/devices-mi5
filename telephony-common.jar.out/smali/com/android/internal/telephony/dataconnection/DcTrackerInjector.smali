.class public Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;
.super Ljava/lang/Object;
.source "DcTrackerInjector.java"


# static fields
.field private static final CHINA_TELECOM_OPERATOR_NUMERIC:Ljava/lang/String; = "46003"

.field static final LOG_TAG:Ljava/lang/String; = "DCT"

.field private static final VODAFONE_OPERATOR_NUMERIC:Ljava/lang/String; = "20404"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6
    .param p0, "dataState"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p1, "phoneId"    # I

    .prologue
    .line 27
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq p0, v4, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object p0

    .line 32
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 33
    .local v3, "phoneProxy":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-eq v4, p1, :cond_2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_2

    .line 34
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 35
    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getOrignalOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 97
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "result":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrignalOperatorNumeric - numeric from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 99
    if-nez v0, :cond_0

    const-string v0, ""

    .line 100
    :cond_0
    return-object v0

    .line 97
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static isNeedRestartDataConnection(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 3
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->getOrignalOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->isNeedSwitchOperatorNumericToCT(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNeedSwitchOperatorNumericToCT(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 92
    :cond_1
    :goto_0
    return v2

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 88
    .local v0, "dataRoaming":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 89
    .local v1, "hasCdmaApp":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedSwitchOperatorNumericToCT numeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dataRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasCdmaApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 92
    const-string v4, "20404"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    .end local v1    # "hasCdmaApp":Z
    :cond_4
    move v1, v3

    .line 88
    goto :goto_1
.end method

.method static log(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "DCT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method static onVoiceCallChangeForOtherDcTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 7
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "isVoiceCallStarted"    # Z

    .prologue
    .line 42
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 43
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 42
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 47
    .local v3, "otherDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    if-eqz p1, :cond_2

    const-string v5, "2GVoiceCallStarted"

    :goto_2
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "2GVoiceCallEnded"

    goto :goto_2

    .line 52
    .end local v3    # "otherDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    return-void
.end method

.method static switchOperatorNumericForCT(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;
    .locals 4
    .param p0, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->isNeedSwitchOperatorNumericToCT(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "ctNumeric":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchOperatorNumericForCT  ctNumeric\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccRecords: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v0, "46003"

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->updateAPNSimOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 76
    .end local v0    # "ctNumeric":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchOperatorNumericForCT numeric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerInjector;->log(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    move-object v0, p1

    .line 76
    goto :goto_1
.end method

.method static updateAPNSimOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lmiui/telephony/TelephonyConstants;->PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

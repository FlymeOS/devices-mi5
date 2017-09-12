.class public Lcom/android/internal/telephony/PhoneFactoryInjector;
.super Ljava/lang/Object;
.source "PhoneFactoryInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveSubId(ILcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p0, "phoneSubId"    # I
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v2

    .line 15
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 16
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 19
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 21
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 22
    :cond_2
    const-string v3, "PhoneFactory"

    const-string v4, "isActiveSubId false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

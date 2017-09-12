.class public Lcom/android/internal/telephony/gsm/GsmMmiCodeInjector;
.super Ljava/lang/Object;
.source "GsmMmiCodeInjector.java"


# static fields
.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final TAG:Ljava/lang/String; = "GsmMmiCodeInjector"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlockedMmi(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 11
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "bIsBlockedMmi":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 25
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    .line 26
    .local v7, "slot":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .local v1, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    move-object v6, p0

    .line 28
    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    .line 29
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 31
    .local v2, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "newDialString":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "networkPortion":Ljava/lang/String;
    invoke-static {v4, v2, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v3

    .line 36
    .local v3, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "300"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "30"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "31"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "76"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "77"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "03"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "43"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 50
    .end local v1    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v3    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v4    # "networkPortion":Ljava/lang/String;
    .end local v5    # "newDialString":Ljava/lang/String;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .end local v7    # "slot":I
    :cond_1
    const-string v8, "GsmMmiCodeInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isBlockedMmi result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v0
.end method

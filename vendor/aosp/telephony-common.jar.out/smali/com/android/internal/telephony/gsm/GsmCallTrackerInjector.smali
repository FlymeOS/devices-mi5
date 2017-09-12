.class public Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;
.super Ljava/lang/Object;
.source "GsmCallTrackerInjector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GsmCallTrackerInjector"

.field private static sIsHD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 66
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "10010"

    aput-object v9, v6, v7

    const-string v9, "114"

    aput-object v9, v6, v8

    .line 68
    .local v6, "specialNumArray":[Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 69
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 78
    .local v1, "currentCall":Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_3

    move v7, v8

    .line 94
    .end local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_1
    return v7

    .line 70
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 71
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 72
    .end local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "currentNumber":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    .line 86
    goto :goto_1

    .line 88
    :cond_4
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 89
    .local v5, "num":Ljava/lang/String;
    invoke-static {v5, v2, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    .line 90
    goto :goto_1

    .line 88
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static sendSpeechCodecIsHDBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 32
    move v1, p1

    .line 33
    .local v1, "localHD":Z
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 36
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    if-eq v2, v1, :cond_2

    .line 37
    sput-boolean v1, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    .line 38
    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V

    .line 39
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v2, :cond_2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SPEECH_CODEC_IS_HD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    const-string v2, "is_hd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 44
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 45
    const-string v2, "GsmCallTrackerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSpeechCodecIsHDBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private static setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;
    .param p1, "isHD"    # Z

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 58
    .local v1, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 60
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private static setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 51
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 52
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 53
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 54
    return-void
.end method

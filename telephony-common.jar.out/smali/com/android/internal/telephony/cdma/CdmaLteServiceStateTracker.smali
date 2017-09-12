.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    .line 95
    new-instance v1, Landroid/telephony/CellInfoLte;

    invoke-direct {v1}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 73
    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 74
    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 78
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v1, Landroid/telephony/CellInfoLte;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v1, Landroid/telephony/CellInfoLte;

    new-instance v2, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v1, v2}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v1, Landroid/telephony/CellInfoLte;

    new-instance v2, Landroid/telephony/CellIdentityLte;

    invoke-direct {v2}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v1, v2}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const-string v1, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v1

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 703
    if-eqz p1, :cond_0

    .line 705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 708
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 705
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 715
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 116
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 117
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 808
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 726
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 734
    :goto_0
    return-object v0

    .line 728
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v3, :cond_0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 132
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 178
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 134
    :sswitch_0
    const-string v3, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 139
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 140
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 141
    .local v2, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 144
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    .line 145
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 147
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 162
    .end local v2    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    goto :goto_0

    .line 165
    :sswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 166
    .local v1, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v3, :cond_3

    .line 169
    const-string v3, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 171
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 175
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 173
    :cond_3
    :try_start_1
    const-string v3, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_2
        0x1b -> :sswitch_1
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 18
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 187
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 188
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    .line 190
    .local v16, "states":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " states="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 194
    const/4 v12, 0x0

    .line 195
    .local v12, "newDataRAT":I
    const/4 v15, -0x1

    .line 196
    .local v15, "regState":I
    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_1

    .line 198
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 201
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-lt v2, v0, :cond_0

    const/4 v2, 0x3

    aget-object v2, v16, v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v2, 0x3

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 208
    :cond_0
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0xa

    move/from16 v0, v17

    if-lt v2, v0, :cond_1

    .line 215
    const/4 v14, 0x0

    .line 218
    .local v14, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 219
    const/4 v2, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 232
    .local v3, "mcc":I
    :goto_1
    const/4 v2, 0x3

    :try_start_2
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    .line 242
    .local v4, "mnc":I
    :goto_2
    const/4 v2, 0x6

    :try_start_3
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    .line 249
    .local v7, "tac":I
    :goto_3
    const/4 v2, 0x7

    :try_start_4
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v6

    .line 256
    .local v6, "pci":I
    :goto_4
    const/16 v2, 0x8

    :try_start_5
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v5

    .line 263
    .local v5, "eci":I
    :goto_5
    const/16 v2, 0x9

    :try_start_6
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v8

    .line 270
    .local v8, "csgid":I
    :goto_6
    new-instance v2, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: mNewLteCellIdentity="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 285
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v8    # "csgid":I
    .end local v14    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    .line 286
    .local v13, "oldDataRAT":I
    if-nez v13, :cond_2

    if-nez v12, :cond_4

    :cond_2
    invoke-static {v13}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xe

    if-eq v12, v2, :cond_4

    :cond_3
    const/16 v2, 0xe

    if-ne v13, v2, :cond_5

    invoke-static {v12}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 295
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v12}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    .line 297
    .local v9, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v9}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " regState="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " dataRadioTechnology="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 308
    .end local v9    # "dataRegState":I
    .end local v12    # "newDataRAT":I
    .end local v13    # "oldDataRAT":I
    .end local v15    # "regState":I
    .end local v16    # "states":[Ljava/lang/String;
    :goto_7
    return-void

    .line 204
    .restart local v12    # "newDataRAT":I
    .restart local v15    # "regState":I
    .restart local v16    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 205
    .local v11, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    .restart local v14    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 222
    .local v10, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 223
    const/4 v2, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v3

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 224
    .end local v3    # "mcc":I
    :catch_2
    move-exception v11

    .line 225
    .local v11, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: bad mcc operatorNumeric="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " ex="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 227
    const-string v14, ""

    .line 228
    const v3, 0x7fffffff

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 233
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    .line 234
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: bad mnc operatorNumeric="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " e="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 236
    const v4, 0x7fffffff

    .restart local v4    # "mnc":I
    goto/16 :goto_2

    .line 243
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    .line 244
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: bad tac states[6]="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x6

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " e="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 246
    const v7, 0x7fffffff

    .restart local v7    # "tac":I
    goto/16 :goto_3

    .line 250
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    .line 251
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: bad pci states[7]="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x7

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " e="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 253
    const v6, 0x7fffffff

    .restart local v6    # "pci":I
    goto/16 :goto_4

    .line 257
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .line 258
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handlePollStateResultMessage: bad eci states[8]="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x8

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " e="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 260
    const v5, 0x7fffffff

    .restart local v5    # "eci":I
    goto/16 :goto_5

    .line 264
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v10

    .line 268
    .restart local v10    # "e":Ljava/lang/Exception;
    const v8, 0x7fffffff

    .restart local v8    # "csgid":I
    goto/16 :goto_6

    .line 306
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v8    # "csgid":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "newDataRAT":I
    .end local v14    # "operatorNumeric":Ljava/lang/String;
    .end local v15    # "regState":I
    .end local v16    # "states":[Ljava/lang/String;
    :cond_6
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_7
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 687
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    .line 663
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    const/4 p2, 0x1

    .line 666
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 668
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 669
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    .line 671
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    .line 672
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 680
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    .line 681
    return v1

    .line 680
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 315
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 356
    :goto_1
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 320
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 329
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 331
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 48

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateRoamingState()V

    .line 362
    sget-boolean v42, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v42, :cond_0

    const-string v42, "telephony.test.forceRoaming"

    const/16 v43, 0x0

    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 367
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 369
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "] newSS=["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "]"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-eqz v42, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-nez v42, :cond_20

    const/16 v25, 0x1

    .line 374
    .local v25, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-nez v42, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-eqz v42, :cond_21

    const/16 v21, 0x1

    .line 377
    .local v21, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-eqz v42, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-nez v42, :cond_22

    const/4 v13, 0x1

    .line 381
    .local v13, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-nez v42, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-eqz v42, :cond_23

    const/4 v15, 0x1

    .line 385
    .local v15, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_24

    const/4 v14, 0x1

    .line 388
    .local v14, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_25

    const/16 v26, 0x1

    .line 391
    .local v26, "hasVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_26

    const/16 v18, 0x1

    .line 394
    .local v18, "hasDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_27

    const/16 v16, 0x1

    .line 396
    .local v16, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v42

    if-nez v42, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v42

    if-eqz v42, :cond_28

    const/16 v28, 0x1

    .line 398
    .local v28, "hasVoiceRoamingOn":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v42

    if-eqz v42, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v42

    if-nez v42, :cond_29

    const/16 v27, 0x1

    .line 400
    .local v27, "hasVoiceRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v42

    if-nez v42, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v42

    if-eqz v42, :cond_2a

    const/16 v20, 0x1

    .line 402
    .local v20, "hasDataRoamingOn":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v42

    if-eqz v42, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v42

    if-nez v42, :cond_2b

    const/16 v19, 0x1

    .line 404
    .local v19, "hasDataRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_2c

    const/16 v22, 0x1

    .line 406
    .local v22, "hasLocationChanged":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2d

    const/16 v17, 0x1

    .line 407
    .local v17, "hasCssIndicatorChanged":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-nez v42, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v42

    if-eqz v42, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    const/16 v43, 0xd

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    const/16 v43, 0xd

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v42

    if-eqz v42, :cond_2e

    :cond_2
    const/4 v11, 0x1

    .line 416
    .local v11, "has4gHandoff":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v42

    if-nez v42, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    const/16 v43, 0xd

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2f

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v42

    if-nez v42, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    const/16 v43, 0xd

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2f

    const/16 v24, 0x1

    .line 424
    .local v24, "hasMultiApnSupport":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    const/16 v43, 0x4

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-gt v0, v1, :cond_30

    const/16 v23, 0x1

    .line 428
    .local v23, "hasLostMultiApnSupport":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v42

    const-string v43, "phone"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 432
    .local v40, "tm":Landroid/telephony/TelephonyManager;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pollStateDone: hasRegistered="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasDeegistered="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasChanged="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasVoiceRoamingOn="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasVoiceRoamingOff="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasDataRoamingOn="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasDataRoamingOff="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasLocationChanged="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " has4gHandoff = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasMultiApnSupport="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " hasLostMultiApnSupport="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_5

    .line 453
    :cond_4
    const v42, 0xc3c4

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 458
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    .line 459
    .local v41, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 460
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v37, v0

    .line 465
    .local v37, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 466
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 470
    if-eqz v26, :cond_6

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 474
    :cond_6
    if-eqz v18, :cond_8

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 477
    const/16 v42, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 479
    const-string v42, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 482
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/PhoneBase;->isVolteEnabled()Z

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v43, v0

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTrackerInjector;->sendIMSRegistedStateBroadcast(ZLcom/android/internal/telephony/Phone;)V

    .line 485
    :cond_8
    if-eqz v25, :cond_9

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 489
    :cond_9
    if-eqz v16, :cond_12

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v42, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v42

    if-nez v42, :cond_31

    const/4 v12, 0x0

    .line 492
    .local v12, "hasBrandOverride":Z
    :goto_11
    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v42

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    move-result v42

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v42

    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x112009d

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v42

    if-eqz v42, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsSubscriptionFromRuim:Z

    move/from16 v42, v0

    if-nez v42, :cond_c

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 501
    .local v9, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-nez v42, :cond_33

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v9

    .line 516
    :cond_b
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 519
    .end local v9    # "eriText":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v42, v0

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v42

    sget-object v43, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v42, v0

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-eqz v42, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-nez v42, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRatLte(I)Z

    move-result v42

    if-nez v42, :cond_e

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v35

    .line 529
    .local v35, "showSpn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v29

    .line 531
    .local v29, "iconIndex":I
    if-eqz v35, :cond_e

    const/16 v42, 0x1

    move/from16 v0, v29

    move/from16 v1, v42

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v42

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v42, v0

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_e

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 541
    .end local v29    # "iconIndex":I
    .end local v35    # "showSpn":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v40

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v42

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v33

    .line 544
    .local v33, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    .line 546
    .local v32, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_f

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v36

    .line 548
    .local v36, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 550
    .end local v36    # "sid":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v42

    move-object/from16 v0, v40

    move/from16 v1, v42

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_36

    .line 555
    const-string v42, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v42

    const-string v43, ""

    move-object/from16 v0, v40

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 557
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 581
    :cond_10
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v42

    if-nez v42, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v42

    if-eqz v42, :cond_37

    :cond_11
    const/16 v42, 0x1

    :goto_14
    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 586
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Broadcasting ServiceState : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 595
    .end local v12    # "hasBrandOverride":Z
    .end local v32    # "operatorNumeric":Ljava/lang/String;
    .end local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_12
    if-eqz v15, :cond_13

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 599
    :cond_13
    if-nez v14, :cond_14

    if-eqz v18, :cond_15

    .line 600
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 601
    const/16 v42, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_38

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    const-string v43, "iwlanAvailable"

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 609
    :cond_15
    :goto_15
    if-eqz v28, :cond_16

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 613
    :cond_16
    if-eqz v27, :cond_17

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 617
    :cond_17
    if-eqz v20, :cond_18

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 620
    :cond_18
    if-nez v13, :cond_19

    if-eqz v11, :cond_1a

    .line 621
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 624
    :cond_1a
    if-eqz v19, :cond_1b

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 628
    :cond_1b
    if-eqz v22, :cond_1c

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 632
    :cond_1c
    if-eqz v17, :cond_1d

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    const-string v43, "cssIndicatorChanged"

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 636
    :cond_1d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v6, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v43, v0

    monitor-enter v43

    .line 638
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v8, Landroid/telephony/CellInfoLte;

    .line 640
    .local v8, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_39

    const/4 v7, 0x1

    .line 641
    .local v7, "cidChanged":Z
    :goto_16
    if-nez v25, :cond_1e

    if-nez v21, :cond_1e

    if-eqz v7, :cond_1f

    .line 643
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    mul-long v38, v44, v46

    .line 644
    .local v38, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    if-nez v42, :cond_3a

    const/16 v34, 0x1

    .line 645
    .local v34, "registered":Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 647
    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/telephony/CellInfoLte;->setRegistered(Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 650
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pollStateDone: hasRegistered="

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v44, " hasDeregistered="

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v44, " cidChanged="

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v44, " mCellInfo="

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v34    # "registered":Z
    .end local v38    # "timeStamp":J
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 658
    monitor-exit v43
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    return-void

    .line 371
    .end local v6    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v7    # "cidChanged":Z
    .end local v8    # "cil":Landroid/telephony/CellInfoLte;
    .end local v11    # "has4gHandoff":Z
    .end local v13    # "hasCdmaDataConnectionAttached":Z
    .end local v14    # "hasCdmaDataConnectionChanged":Z
    .end local v15    # "hasCdmaDataConnectionDetached":Z
    .end local v16    # "hasChanged":Z
    .end local v17    # "hasCssIndicatorChanged":Z
    .end local v18    # "hasDataRadioTechnologyChanged":Z
    .end local v19    # "hasDataRoamingOff":Z
    .end local v20    # "hasDataRoamingOn":Z
    .end local v21    # "hasDeregistered":Z
    .end local v22    # "hasLocationChanged":Z
    .end local v23    # "hasLostMultiApnSupport":Z
    .end local v24    # "hasMultiApnSupport":Z
    .end local v25    # "hasRegistered":Z
    .end local v26    # "hasVoiceRadioTechnologyChanged":Z
    .end local v27    # "hasVoiceRoamingOff":Z
    .end local v28    # "hasVoiceRoamingOn":Z
    .end local v37    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v40    # "tm":Landroid/telephony/TelephonyManager;
    .end local v41    # "tss":Landroid/telephony/ServiceState;
    :cond_20
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 374
    .restart local v25    # "hasRegistered":Z
    :cond_21
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 377
    .restart local v21    # "hasDeregistered":Z
    :cond_22
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 381
    .restart local v13    # "hasCdmaDataConnectionAttached":Z
    :cond_23
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 385
    .restart local v15    # "hasCdmaDataConnectionDetached":Z
    :cond_24
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 388
    .restart local v14    # "hasCdmaDataConnectionChanged":Z
    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 391
    .restart local v26    # "hasVoiceRadioTechnologyChanged":Z
    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 394
    .restart local v18    # "hasDataRadioTechnologyChanged":Z
    :cond_27
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 396
    .restart local v16    # "hasChanged":Z
    :cond_28
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 398
    .restart local v28    # "hasVoiceRoamingOn":Z
    :cond_29
    const/16 v27, 0x0

    goto/16 :goto_9

    .line 400
    .restart local v27    # "hasVoiceRoamingOff":Z
    :cond_2a
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 402
    .restart local v20    # "hasDataRoamingOn":Z
    :cond_2b
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 404
    .restart local v19    # "hasDataRoamingOff":Z
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 406
    .restart local v22    # "hasLocationChanged":Z
    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 407
    .restart local v17    # "hasCssIndicatorChanged":Z
    :cond_2e
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 416
    .restart local v11    # "has4gHandoff":Z
    :cond_2f
    const/16 v24, 0x0

    goto/16 :goto_f

    .line 424
    .restart local v24    # "hasMultiApnSupport":Z
    :cond_30
    const/16 v23, 0x0

    goto/16 :goto_10

    .line 490
    .restart local v23    # "hasLostMultiApnSupport":Z
    .restart local v37    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v40    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v41    # "tss":Landroid/telephony/ServiceState;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v42, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_32

    const/4 v12, 0x1

    goto/16 :goto_11

    :cond_32
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 503
    .restart local v9    # "eriText":Ljava/lang/String;
    .restart local v12    # "hasBrandOverride":Z
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v42

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_35

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v42, v0

    if-eqz v42, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    .line 505
    :goto_18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_b

    .line 508
    const-string v42, "ro.cdma.home.operator.alpha"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_12

    .line 504
    :cond_34
    const/4 v9, 0x0

    goto :goto_18

    .line 510
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v42

    if-eqz v42, :cond_b

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v42

    const v43, 0x10400d3

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_12

    .line 559
    .end local v9    # "eriText":Ljava/lang/String;
    .restart local v32    # "operatorNumeric":Ljava/lang/String;
    .restart local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_36
    const-string v30, ""

    .line 560
    .local v30, "isoCountryCode":Ljava/lang/String;
    const/16 v42, 0x0

    const/16 v43, 0x3

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 562
    .local v31, "mcc":Ljava/lang/String;
    const/16 v42, 0x0

    const/16 v43, 0x3

    :try_start_1
    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v30

    .line 570
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v42

    move-object/from16 v0, v40

    move/from16 v1, v42

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 571
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 564
    :catch_0
    move-exception v10

    .line 565
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "countryCodeForMcc error"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_19

    .line 566
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    .line 567
    .local v10, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "countryCodeForMcc error"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 581
    .end local v10    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v30    # "isoCountryCode":Ljava/lang/String;
    .end local v31    # "mcc":Ljava/lang/String;
    :cond_37
    const/16 v42, 0x0

    goto/16 :goto_14

    .line 605
    .end local v12    # "hasBrandOverride":Z
    .end local v32    # "operatorNumeric":Ljava/lang/String;
    .end local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 640
    .restart local v6    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "cil":Landroid/telephony/CellInfoLte;
    :cond_39
    const/4 v7, 0x0

    goto/16 :goto_16

    .line 644
    .restart local v7    # "cidChanged":Z
    .restart local v38    # "timeStamp":J
    :cond_3a
    const/16 v34, 0x0

    goto/16 :goto_17

    .line 658
    .end local v7    # "cidChanged":Z
    .end local v8    # "cil":Landroid/telephony/CellInfoLte;
    .end local v38    # "timeStamp":J
    :catchall_0
    move-exception v42

    :try_start_2
    monitor-exit v43
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v42
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_2

    .line 757
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 760
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 766
    :cond_1
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 767
    const-string v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 793
    .end local v0    # "dds":I
    :cond_2
    :goto_0
    monitor-exit p0

    .line 794
    return-void

    .line 770
    .restart local v0    # "dds":I
    :cond_3
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 773
    const-string v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 778
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 780
    :cond_4
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 781
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 782
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 783
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 784
    const-string v2, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 785
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 793
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 787
    .restart local v0    # "dds":I
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_1
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 789
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 746
    return-void
.end method

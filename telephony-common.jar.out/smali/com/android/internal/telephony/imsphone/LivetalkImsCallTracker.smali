.class public Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;
.super Lcom/android/internal/telephony/LivetalkCallTracker;
.source "LivetalkImsCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LivetalkImsCallTracker"


# instance fields
.field private mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

.field public mDTMFRecognized:Z

.field public mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

.field public mFakeNumbersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ims/ImsCall;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRawNumbersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ims/ImsCall;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;)V
    .locals 2
    .param p1, "callTracker"    # Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    .prologue
    const/4 v1, 0x7

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/LivetalkCallTracker;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDTMFRecognized:Z

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakeNumbersMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbersMap:Ljava/util/HashMap;

    .line 43
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakeNumbers:[Ljava/lang/String;

    .line 44
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbers:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private isStartDTMF(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "imsCallState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 153
    const-string v0, "LivetalkImsCallTracker"

    const-string v1, "isStartDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method private startDTMF(Lcom/android/internal/telephony/Connection;Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 164
    const-string v0, "LivetalkImsCallTracker"

    const-string v1, "startDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-nez v0, :cond_0

    .line 166
    invoke-static {p0, p1, p2}, Lmiui/telephony/dtmf/DTMFTaskManager;->createDTMFTask(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/ims/ImsCall;)Lmiui/telephony/dtmf/DTMFTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->startDTMFRecognize()V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public dial(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/internal/telephony/LivetalkCallTracker;->dial(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDTMFRecognized:Z

    .line 204
    return-void
.end method

.method public fakeReset(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->stopDTMF()V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakeNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method public fakeResetAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->stopDTMF()V

    .line 57
    const/4 v0, 0x7

    invoke-super {p0, v0}, Lcom/android/internal/telephony/LivetalkCallTracker;->fakeResetAll(I)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->setPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakeNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 62
    return-void
.end method

.method public getFakeMoConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->isCallbackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbersMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbersMap:Ljava/util/HashMap;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    :goto_0
    return-object v0

    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hangup()V
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mIsFakePendingMO:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mIsFakeLocalHangup:Z

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mIsFakePendingMO:Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public isCallbackState()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mIsFakePendingMO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandleCallStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "oi"

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakeNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->isStartDTMF(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "LivetalkImsCallTracker"

    const-string v1, "isHandleCallStateChange: Ignor ACTIVE call state change before we received DTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 118
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->hangup()V

    .line 123
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->fakeReset(Lcom/android/ims/ImsCall;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 125
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDTMFRecognized:Z

    :cond_3
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public isHandleIncomingCall(Lcom/android/ims/ImsCall;)Z
    .locals 10
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v4

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 69
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 71
    :try_start_0
    const-string v5, "oi"

    invoke-virtual {p1, v5}, Lcom/android/ims/ImsCall;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Lmiui/telephony/livetalk/LivetalkUtils;->isLiveTalkCallbackNumber(Ljava/lang/String;)Z

    move-result v2

    .line 77
    .local v2, "isCallbackNumber":Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v5}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->isCallbackState(Z)Z

    move-result v3

    .line 78
    .local v3, "isCallbackState":Z
    const-string v5, "LivetalkImsCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHandle isCallbackNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCallbackState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 80
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mRawNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakeNumbersMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v4}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 83
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    invoke-interface {v4, v9}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->setPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 84
    iput-object v9, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    .line 86
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p1, v4}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 87
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mIsFakePendingMO:Z

    .line 88
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LivetalkCallTracker;->acceptBackCall(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move v4, v6

    .line 92
    goto :goto_0

    .line 72
    .end local v2    # "isCallbackNumber":Z
    .end local v3    # "isCallbackState":Z
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v5, "LivetalkImsCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get call address failed, exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_3
    move v2, v4

    .line 76
    goto :goto_2

    .restart local v2    # "isCallbackNumber":Z
    :cond_4
    move v5, v4

    .line 77
    goto :goto_3

    .line 89
    .restart local v3    # "isCallbackState":Z
    :catch_1
    move-exception v1

    .line 90
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v4, "LivetalkImsCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot accept call, exception="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 93
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_0

    .line 95
    :cond_6
    const/16 v5, 0x1f7

    :try_start_2
    invoke-virtual {p1, v5}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 96
    :catch_2
    move-exception v1

    .line 97
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v5, "LivetalkImsCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot reject call, exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isLiveTalk(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string v4, "isLivetalk"

    invoke-virtual {p3, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 182
    .local v0, "isLivetalk":Z
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "networkPortion":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v1

    .line 185
    .local v1, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 138
    const-string v0, "LivetalkImsCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLiveTalkRealConnect connection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imsCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDTMFRecognized:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mCallTracker:Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;->processLiveTalkCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 133
    const-string v0, "LivetalkImsCallTracker"

    const-string v1, "this function should not be called"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public stopDTMF()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "LivetalkImsCallTracker"

    const-string v1, "stopDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopDTMFRecognize()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mDtmfTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 177
    :cond_0
    return-void
.end method

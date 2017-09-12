.class public abstract Lcom/android/internal/telephony/LivetalkCallTracker;
.super Ljava/lang/Object;
.source "LivetalkCallTracker.java"


# static fields
.field public static final PARAM_CALL_BACK_NUMBER:Ljava/lang/String; = "callbackNumber"

.field public static final PARAM_CALL_BACK_STATE:Ljava/lang/String; = "isInCallbackState"

.field public static final PARAM_IS_CALL_BACK_NUMBER:Ljava/lang/String; = "isCallbackNumber"

.field private static final TAG:Ljava/lang/String; = "LivetalkCallTracker"


# instance fields
.field public mFakeNumbers:[Ljava/lang/String;

.field public mFakePendingMONumber:Ljava/lang/String;

.field public mIsFakeLocalHangup:Z

.field public mIsFakePendingMO:Z

.field public mRawNumbers:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakePendingMO:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakeLocalHangup:Z

    return-void
.end method

.method public static acceptBackCall(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v1, "LivetalkCallTracker"

    const-string v2, "acceptBackCall"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.service.LivetalkService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "com.miui.livetalk_ACCEPT_BACK_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    return-void
.end method

.method public static recordDcInfoByFile(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callbackNumber"    # Ljava/lang/String;
    .param p2, "isCallbackNumber"    # Z
    .param p3, "isCallBackState"    # Z

    .prologue
    .line 26
    const-string v1, "LivetalkCallTracker"

    const-string v2, "recordDcInfoByFile"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.service.LivetalkService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v1, "callbackNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "isInCallbackState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    const-string v1, "isCallbackNumber"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const-string v1, "com.miui.livetalk_RECORD_CALLBACK_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method


# virtual methods
.method public dial(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "LivetalkCallTracker"

    const-string v1, "dial"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakePendingMO:Z

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    .line 101
    return-void
.end method

.method protected fakeReset(II)V
    .locals 13
    .param p1, "i"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 71
    const-string v6, "LivetalkCallTracker"

    const-string v7, "fakeReset %s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-ltz p1, :cond_2

    .line 73
    iget-object v6, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aput-object v11, v6, p1

    .line 74
    iget-object v6, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mRawNumbers:[Ljava/lang/String;

    aput-object v11, v6, p1

    .line 82
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 83
    .local v3, "isEmpty":Z
    iget-object v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakeNumbers:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 84
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 85
    const/4 v3, 0x0

    .line 89
    .end local v5    # "number":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_4

    .line 90
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    if-ge v2, p2, :cond_4

    .line 91
    iget-object v6, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aput-object v11, v6, v2

    .line 92
    iget-object v6, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mRawNumbers:[Ljava/lang/String;

    aput-object v11, v6, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "isEmpty":Z
    .end local v4    # "len$":I
    :cond_2
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 77
    iput-boolean v12, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakeLocalHangup:Z

    .line 78
    iput-object v11, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    goto :goto_0

    .line 83
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v3    # "isEmpty":Z
    .restart local v4    # "len$":I
    .restart local v5    # "number":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v5    # "number":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public fakeResetAll(I)V
    .locals 7
    .param p1, "length"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 60
    const-string v1, "LivetalkCallTracker"

    const-string v2, "fakeResetAll %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v5, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakePendingMO:Z

    .line 62
    iput-boolean v5, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakeLocalHangup:Z

    .line 63
    iput-object v6, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aput-object v6, v1, v0

    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mRawNumbers:[Ljava/lang/String;

    aput-object v6, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public hangup()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "LivetalkCallTracker"

    const-string v1, "hangup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakePendingMO:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakeLocalHangup:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakePendingMO:Z

    .line 107
    return-void
.end method

.method public isCallbackState(Z)Z
    .locals 6
    .param p1, "isPendingMONull"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    const-string v2, "LivetalkCallTracker"

    const-string v3, "isCallbackState %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-boolean v2, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mIsFakePendingMO:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LivetalkCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 57
    return-void
.end method

.method public abstract onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
.end method

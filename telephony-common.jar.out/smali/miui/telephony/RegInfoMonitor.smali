.class public Lmiui/telephony/RegInfoMonitor;
.super Ljava/lang/Object;
.source "RegInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final REPORT_CONTROL:Ljava/lang/String; = "sys.reginfo.control"

.field private static final REPORT_LAC:I = 0x1

.field private static final REPORT_REJECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RegInfo"

.field private static final sInstances:[Lmiui/telephony/RegInfoMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLacChangedAfterDeny:Z

.field private mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

.field private mReportControl:I

.field private mSlotId:I

.field private mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget v0, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v0, v0, [Lmiui/telephony/RegInfoMonitor;

    sput-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-direct {v0}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;-><init>()V

    iput-object v0, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .line 29
    new-instance v0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-direct {v0}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;-><init>()V

    iput-object v0, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .line 30
    iput-object p1, p0, Lmiui/telephony/RegInfoMonitor;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lmiui/telephony/RegInfoMonitor;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 39
    const-class v1, Lmiui/telephony/RegInfoMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    new-instance v2, Lmiui/telephony/RegInfoMonitor;

    invoke-direct {v2, p0}, Lmiui/telephony/RegInfoMonitor;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, p1

    .line 41
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    aget-object v0, v0, p1

    iput p1, v0, Lmiui/telephony/RegInfoMonitor;->mSlotId:I

    .line 42
    const-string v0, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegInfoMonitor instance created for slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyRegInfoUpdate(Lcom/android/internal/telephony/gsm/GSMPhone;III[Ljava/lang/String;)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "regState"    # I
    .param p4, "states"    # [Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/RegInfoMonitor;->getInstance(Landroid/content/Context;I)Lmiui/telephony/RegInfoMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/telephony/RegInfoMonitor;->onRegInfoUpdate(III[Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onRegDenied(II)V
    .locals 4
    .param p1, "rejCode"    # I
    .param p2, "lac"    # I

    .prologue
    .line 95
    const-string v1, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegDenied: rejCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I
    invoke-static {v3}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$000(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # setter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I
    invoke-static {v1, p1}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$302(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I

    .line 98
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J
    invoke-static {v1, v2, v3}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$402(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;J)J

    .line 101
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-boolean v1, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.action.metok.FALSE_STATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slot"

    iget v2, p0, Lmiui/telephony/RegInfoMonitor;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "lac"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I
    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$000(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v1, "cid"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I
    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$100(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "startTime"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J
    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$500(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 111
    const-string v1, "endTime"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J
    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$600(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    const-string v1, "rejCode"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I
    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$300(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "com.miui.sysbase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    const-string v1, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network reject on:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v3}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    goto :goto_0
.end method

.method public onRegInfoUpdate(III[Ljava/lang/String;)V
    .locals 11
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "regState"    # I
    .param p4, "states"    # [Ljava/lang/String;

    .prologue
    const/16 v10, 0xd

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x3

    .line 48
    const-string v5, "sys.reginfo.control"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lmiui/telephony/RegInfoMonitor;->mReportControl:I

    if-nez v5, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    .local v3, "type":I
    const/4 v1, 0x0

    .line 55
    .local v1, "isGsm":Z
    :try_start_0
    array-length v5, p4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    const/4 v5, 0x3

    aget-object v5, p4, v5

    if-eqz v5, :cond_3

    .line 56
    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 57
    const/16 v5, 0x10

    if-eq v3, v5, :cond_2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    :cond_2
    move v1, v4

    .line 64
    :cond_3
    :goto_1
    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I
    invoke-static {v5}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$000(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v5

    if-ne p1, v5, :cond_7

    if-eq p2, v9, :cond_7

    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I
    invoke-static {v5}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$100(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v5

    if-eq p2, v5, :cond_7

    .line 65
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # setter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I
    invoke-static {v4, p2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$102(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I

    .line 66
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # setter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z
    invoke-static {v4, v1}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$202(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;Z)Z

    .line 80
    :cond_4
    :goto_2
    iget v4, p0, Lmiui/telephony/RegInfoMonitor;->mReportControl:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    if-eq p3, v8, :cond_5

    if-ne p3, v10, :cond_0

    :cond_5
    array-length v4, p4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 85
    const/16 v4, 0xd

    :try_start_1
    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "rejCode":I
    invoke-virtual {p0, v2, p1}, Lmiui/telephony/RegInfoMonitor;->onRegDenied(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    .end local v2    # "rejCode":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "RegInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing rejCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    const-string v5, "RegInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error parsing type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    # getter for: Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I
    invoke-static {v5}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->access$000(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v5

    if-eq p1, v5, :cond_4

    .line 68
    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v5}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->logLacEnd()V

    .line 70
    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    iget-object v6, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v5, v6}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->from(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)V

    .line 71
    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v5}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->reset()V

    .line 72
    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v5, p1, p2, v1}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->logLacStart(IIZ)V

    .line 73
    iput-boolean v4, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    .line 75
    if-eq p1, v9, :cond_4

    iget v4, p0, Lmiui/telephony/RegInfoMonitor;->mReportControl:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 76
    invoke-virtual {p0, p1, p2, v1}, Lmiui/telephony/RegInfoMonitor;->onValidLacChanged(IIZ)V

    goto :goto_2
.end method

.method public onValidLacChanged(IIZ)V
    .locals 4
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "isGsm"    # Z

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.action.metok.LAC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slot"

    iget v2, p0, Lmiui/telephony/RegInfoMonitor;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "lac"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "cid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "isGsm"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v1, "com.miui.sysbase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    const-string v1, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast LAC changed, lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isGsm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

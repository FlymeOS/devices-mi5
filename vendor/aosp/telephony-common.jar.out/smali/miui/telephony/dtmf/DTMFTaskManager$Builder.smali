.class public Lmiui/telephony/dtmf/DTMFTaskManager$Builder;
.super Ljava/lang/Object;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConnection:Lcom/android/internal/telephony/Connection;

.field private mDriverCall:Lcom/android/internal/telephony/DriverCall;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public create()Lmiui/telephony/dtmf/DTMFTaskManager;
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mConnection:Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mDriverCall:Lcom/android/internal/telephony/DriverCall;

    iget-object v4, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/telephony/dtmf/DTMFTaskManager;-><init>(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;Lcom/android/ims/ImsCall;)V

    return-object v0
.end method

.method public setCallTracker(Lcom/android/internal/telephony/LivetalkCallTracker;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;
    .locals 0
    .param p1, "livetalkCallTracker"    # Lcom/android/internal/telephony/LivetalkCallTracker;

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    .line 35
    return-object p0
.end method

.method public setConnection(Lcom/android/internal/telephony/Connection;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;
    .locals 0
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 39
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 40
    return-object p0
.end method

.method public setDriverCall(Lcom/android/internal/telephony/DriverCall;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;
    .locals 0
    .param p1, "driverCall"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 44
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mDriverCall:Lcom/android/internal/telephony/DriverCall;

    .line 45
    return-object p0
.end method

.method public setImsCall(Lcom/android/ims/ImsCall;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->mImsCall:Lcom/android/ims/ImsCall;

    .line 50
    return-object p0
.end method

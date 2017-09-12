.class final Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;
.super Ljava/util/TimerTask;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DTMFMonitorTimerTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DTMFMonitorTimerTask"


# instance fields
.field private mStartTime:J

.field private final mTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;


# direct methods
.method public constructor <init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 2
    .param p1, "taskManager"    # Lmiui/telephony/dtmf/DTMFTaskManager;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 227
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;->mTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;->mStartTime:J

    .line 229
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "DTMFMonitorTimerTask"

    const-string v1, "DTMFMonitorTimerTask run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-wide v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;->mStartTime:J

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->isTimeout(J)Z
    invoke-static {v0, v1}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$300(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;->mTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->isConnAlive()Z
    invoke-static {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$400(Lmiui/telephony/dtmf/DTMFTaskManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    const-string v0, "DTMFMonitorTimerTask"

    const-string v1, "DTMFMonitorTimerTask over 40s or conn isn\'t alive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;->mTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    const/4 v1, 0x0

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognizedFinished(Z)V
    invoke-static {v0, v1}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$000(Lmiui/telephony/dtmf/DTMFTaskManager;Z)V

    .line 239
    :cond_1
    return-void
.end method

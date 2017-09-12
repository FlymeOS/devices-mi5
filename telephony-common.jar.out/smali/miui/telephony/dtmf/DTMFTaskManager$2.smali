.class Lmiui/telephony/dtmf/DTMFTaskManager$2;
.super Ljava/lang/Object;
.source "DTMFTaskManager.java"

# interfaces
.implements Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/dtmf/DTMFTaskManager;


# direct methods
.method constructor <init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$2;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordInitialized(Z)V
    .locals 5
    .param p1, "initialized"    # Z

    .prologue
    .line 101
    const-string v0, "DTMFTaskManager"

    const-string v1, "onRecordInitialized: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$2;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->starRecognizeThread()V
    invoke-static {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$100(Lmiui/telephony/dtmf/DTMFTaskManager;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$2;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->startMonitorTimerTask()V
    invoke-static {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$200(Lmiui/telephony/dtmf/DTMFTaskManager;)V

    .line 106
    return-void
.end method

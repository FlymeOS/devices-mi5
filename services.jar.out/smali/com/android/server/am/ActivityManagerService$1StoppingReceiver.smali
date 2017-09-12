.class Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingReceiver"
.end annotation


# instance fields
.field broadcastRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$shutdownIntent:Landroid/content/Intent;

.field final synthetic val$shutdownReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserState;ILandroid/content/Intent;Landroid/content/IIntentReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20766
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$uss:Lcom/android/server/am/UserState;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$userId:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$shutdownIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 20773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 20774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$uss:Lcom/android/server/am/UserState;

    iget v2, v2, Lcom/android/server/am/UserState;->mState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 20776
    monitor-exit v3

    .line 20806
    :goto_0
    return-void

    .line 20780
    :cond_0
    if-nez p2, :cond_2

    .line 20781
    if-eqz p3, :cond_1

    .line 20782
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delaying user shutdown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20786
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->broadcastRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20788
    monitor-exit v3

    goto :goto_0

    .line 20792
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 20784
    :cond_1
    :try_start_1
    const-string v2, "ActivityManager"

    const-string v4, "Delaying user shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 20791
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$uss:Lcom/android/server/am/UserState;

    const/4 v4, 0x3

    iput v4, v2, Lcom/android/server/am/UserState;->mState:I

    .line 20792
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v3, 0x4007

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$userId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 20796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 20801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$shutdownIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;->val$userId:I

    move/from16 v18, v0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    invoke-static/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    goto/16 :goto_0
.end method

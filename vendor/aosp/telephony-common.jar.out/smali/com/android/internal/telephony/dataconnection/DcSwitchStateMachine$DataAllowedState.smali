.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAllowedState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->mCurrentAllowedSequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "DataAllowedState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 403
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 425
    const/4 v1, 0x0

    .line 428
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 406
    .end local v1    # "retVal":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "DataAllowedState: REQ_DISCONNECT_ALL"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 409
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "releasingAll due to autoAttach"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 417
    const/4 v1, 0x1

    .line 418
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x44002
        :pswitch_0
    .end packed-switch
.end method

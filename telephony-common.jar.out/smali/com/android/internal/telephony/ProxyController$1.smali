.class Lcom/android/internal/telephony/ProxyController$1;
.super Landroid/os/Handler;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 343
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/ProxyController;->access$100(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/ProxyController;->access$200(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/ProxyController;->access$300(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 361
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/ProxyController;->access$400(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 365
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    const-string v3, "EVENT_RADIO_AVAILABLE"

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ProxyController$1;->removeMessages(I)V

    .line 367
    const-string v2, "persist.radio.flexmappingex"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 369
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 370
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->getRadioCapabilityIfFlexMappingFailed(I)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/ProxyController;->access$500(Lcom/android/internal/telephony/ProxyController;I)V

    goto :goto_0

    .line 375
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":I
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    const-string v3, "EVENT_GET_RADIO_CAPS_DONE"

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onReceivedLatestRadioCapability(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/ProxyController;->access$600(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.class Lmiui/telephony/DefaultSimManager$1;
.super Landroid/os/Handler;
.source "DefaultSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/DefaultSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/DefaultSimManager;


# direct methods
.method constructor <init>(Lmiui/telephony/DefaultSimManager;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 88
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v4}, Lmiui/telephony/DefaultSimManager;->onInitDefaultSlot()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v5

    # invokes: Lmiui/telephony/DefaultSimManager;->syncDataSubscription(Ljava/util/List;)V
    invoke-static {v4, v5}, Lmiui/telephony/DefaultSimManager;->access$000(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v5

    # invokes: Lmiui/telephony/DefaultSimManager;->syncVoiceSubscription(Ljava/util/List;)V
    invoke-static {v4, v5}, Lmiui/telephony/DefaultSimManager;->access$100(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 106
    .local v2, "cardIndex":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 107
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/DefaultSimManager;->access$300(Lmiui/telephony/DefaultSimManager;)[I

    move-result-object v4

    aget v3, v4, v2

    .line 108
    .local v3, "lastAppNum":I
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # invokes: Lmiui/telephony/DefaultSimManager;->updateCard(Lcom/android/internal/telephony/uicc/UiccCard;I)V
    invoke-static {v4, v1, v2}, Lmiui/telephony/DefaultSimManager;->access$400(Lmiui/telephony/DefaultSimManager;Lcom/android/internal/telephony/uicc/UiccCard;I)V

    .line 109
    if-eqz v3, :cond_3

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/DefaultSimManager;->access$300(Lmiui/telephony/DefaultSimManager;)[I

    move-result-object v4

    aget v4, v4, v2

    if-nez v4, :cond_3

    .line 111
    sget-boolean v4, Lmiui/telephony/MiuiTelephony;->VDBG:Z

    if-eqz v4, :cond_1

    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_ICC_CHANGED sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " application is not OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/telephony/DefaultSimManager;->access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 103
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "cardIndex":I
    .end local v3    # "lastAppNum":I
    :cond_2
    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    .restart local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v2    # "cardIndex":I
    .restart local v3    # "lastAppNum":I
    :cond_3
    if-nez v3, :cond_0

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/DefaultSimManager;->access$300(Lmiui/telephony/DefaultSimManager;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eqz v4, :cond_0

    .line 115
    sget-boolean v4, Lmiui/telephony/MiuiTelephony;->VDBG:Z

    if-eqz v4, :cond_4

    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_ICC_CHANGED sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " application is OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/telephony/DefaultSimManager;->access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # setter for: Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;
    invoke-static {v4, v8}, Lmiui/telephony/DefaultSimManager;->access$602(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Ljava/util/List;

    .line 118
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v4}, Lmiui/telephony/DefaultSimManager;->onSubscriptionsChanged()V

    goto/16 :goto_0

    .line 122
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "cardIndex":I
    .end local v3    # "lastAppNum":I
    :pswitch_4
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/telephony/DefaultSimManager;->access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # setter for: Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;
    invoke-static {v4, v8}, Lmiui/telephony/DefaultSimManager;->access$602(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Ljava/util/List;

    .line 124
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v4}, Lmiui/telephony/DefaultSimManager;->onSubscriptionsChanged()V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

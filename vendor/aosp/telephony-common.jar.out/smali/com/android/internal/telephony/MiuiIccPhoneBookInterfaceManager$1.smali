.class Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "MiuiIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 114
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 61
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_RECORD_SIZE Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 74
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 75
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 79
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 80
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    :goto_2
    iput-boolean v1, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-boolean v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 86
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 87
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    move v1, v2

    .line 80
    goto :goto_2

    .line 84
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 90
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_4
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 93
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 102
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 103
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 96
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const-string v3, "Cannot load ADN records"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 106
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 107
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    :goto_5
    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I
    invoke-static {v3, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$102(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_BPR_LOADED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    # getter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I
    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 107
    goto :goto_5

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

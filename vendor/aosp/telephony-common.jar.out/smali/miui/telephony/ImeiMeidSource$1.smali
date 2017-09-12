.class Lmiui/telephony/ImeiMeidSource$1;
.super Landroid/os/Handler;
.source "ImeiMeidSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ImeiMeidSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/ImeiMeidSource;


# direct methods
.method constructor <init>(Lmiui/telephony/ImeiMeidSource;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 54
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 57
    :sswitch_0
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit8 v7, v8, -0x64

    .line 58
    .local v7, "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 59
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 60
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$200(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_1

    .line 61
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$200(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    const-string v10, "init"

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    .line 63
    :cond_1
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$300(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_2

    .line 64
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$300(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    const-string v10, "init"

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    .line 66
    :cond_2
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    .line 67
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    add-int/lit16 v8, v7, 0xc8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 68
    .local v2, "imeiMsg":Landroid/os/Message;
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 69
    add-int/lit16 v8, v7, 0x12c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 70
    .local v3, "meidMsg":Landroid/os/Message;
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0

    .line 74
    .end local v1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v2    # "imeiMsg":Landroid/os/Message;
    .end local v3    # "meidMsg":Landroid/os/Message;
    .end local v7    # "slotId":I
    :sswitch_1
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0xc8

    .line 75
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$200(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v9, v8, v7

    .line 76
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 78
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 79
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 80
    .local v6, "retryTimes":I
    const/16 v8, 0xa

    if-gt v6, v8, :cond_0

    .line 83
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$400(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    add-int/lit16 v9, v7, 0x190

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    add-int/lit16 v8, v7, 0x190

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v6, v9}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 85
    .local v5, "retryMsg":Landroid/os/Message;
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$400(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 88
    .end local v5    # "retryMsg":Landroid/os/Message;
    .end local v6    # "retryTimes":I
    :cond_3
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v9

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v7

    .line 89
    # getter for: Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/ImeiMeidSource;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;
    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # invokes: Lmiui/telephony/ImeiMeidSource;->onDeviceIdLoaded()V
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$600(Lmiui/telephony/ImeiMeidSource;)V

    goto/16 :goto_0

    .line 94
    .end local v7    # "slotId":I
    :sswitch_2
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0x12c

    .line 95
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$300(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v9, v8, v7

    .line 96
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_4

    .line 98
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 99
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 100
    .restart local v6    # "retryTimes":I
    const/16 v8, 0xa

    if-gt v6, v8, :cond_0

    .line 103
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$400(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    add-int/lit16 v9, v7, 0x1f4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    add-int/lit16 v8, v7, 0x1f4

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v6, v9}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 105
    .restart local v5    # "retryMsg":Landroid/os/Message;
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$400(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 108
    .end local v5    # "retryMsg":Landroid/os/Message;
    .end local v6    # "retryTimes":I
    :cond_4
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v4, v8

    check-cast v4, [Ljava/lang/String;

    .line 109
    .local v4, "respId":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 111
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    aput-object v9, v8, v7

    .line 113
    :cond_5
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v4, v9

    aput-object v9, v8, v7

    .line 115
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    const-string v9, "^0*$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 116
    # getter for: Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/ImeiMeidSource;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid meid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 119
    :cond_6
    # getter for: Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/ImeiMeidSource;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;
    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;
    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # invokes: Lmiui/telephony/ImeiMeidSource;->onDeviceIdLoaded()V
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$600(Lmiui/telephony/ImeiMeidSource;)V

    goto/16 :goto_0

    .line 125
    .end local v4    # "respId":[Ljava/lang/String;
    .end local v7    # "slotId":I
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0x190

    .line 126
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$200(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_7

    .line 127
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$200(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    aput-object v9, v8, v7

    .line 129
    :cond_7
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    add-int/lit16 v9, v7, 0xc8

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 134
    .end local v7    # "slotId":I
    :sswitch_4
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0x1f4

    .line 135
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$300(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_8

    .line 136
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    # getter for: Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;
    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->access$300(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    aput-object v9, v8, v7

    .line 138
    :cond_8
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    add-int/lit16 v9, v7, 0x12c

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x190 -> :sswitch_3
        0x191 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_4
    .end sparse-switch
.end method

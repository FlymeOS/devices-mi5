.class Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaConnection;->mDtmfToneDelay:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->access$100(Lcom/android/internal/telephony/cdma/CdmaConnection;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

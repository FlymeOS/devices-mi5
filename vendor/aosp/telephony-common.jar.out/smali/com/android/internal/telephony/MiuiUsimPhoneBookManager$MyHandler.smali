.class Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;
.super Landroid/os/Handler;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    const/4 v2, 0x0

    .line 126
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 131
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 132
    .local v1, "response":Landroid/os/Message;
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 133
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 127
    .end local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "loadEfFilesFromUsim has error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

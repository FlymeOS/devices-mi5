.class Lcom/miui/server/SecuritySmsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecuritySmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecuritySmsHandler;


# direct methods
.method constructor <init>(Lcom/miui/server/SecuritySmsHandler;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "action":Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v7

    .line 244
    .local v7, "slotId":I
    const-string v8, "SecurityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mResultReceiver sms dispatched, action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/miui/server/SecuritySmsHandler$2;->getResultCode()I

    move-result v5

    .line 249
    .local v5, "resultCode":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 250
    const-string v8, "SecurityManagerService"

    const-string v9, "mResultReceiver SMS_RECEIVED_ACTION no aborted"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 252
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v4

    if-ge v3, v8, :cond_0

    .line 254
    aget-object v8, v4, v3

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "body":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v8, v1, v2, v7}, Lcom/miui/server/SecuritySmsHandler;->access$200(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 261
    iget-object v8, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V
    invoke-static {v8, p2}, Lcom/miui/server/SecuritySmsHandler;->access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    .line 269
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v5    # "resultCode":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 263
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v5    # "resultCode":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v8, "blockType"

    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # getter for: Lcom/miui/server/SecuritySmsHandler;->mBlockType:I
    invoke-static {v9}, Lcom/miui/server/SecuritySmsHandler;->access$400(Lcom/miui/server/SecuritySmsHandler;)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v8, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    invoke-static {v8, p2}, Lcom/miui/server/SecuritySmsHandler;->access$500(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    .line 265
    const-string v8, "SecurityManagerService"

    const-string v9, "mResultReceiver dispatch SMS_DELIVER_ACTION to original Mms App"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.class public Lcom/android/internal/telephony/InboundSmsHandlerInjector;
.super Ljava/lang/Object;
.source "InboundSmsHandlerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InboundSmsHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beforeDispatchIntent(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 20
    .param p0, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "deleteWhere"    # Ljava/lang/String;
    .param p5, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "action":Ljava/lang/String;
    const/4 v15, 0x0

    .line 34
    .local v15, "smsBlocked":Z
    const-string v17, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 39
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "pdus"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v0, v17

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    .line 40
    .local v12, "pdusArray":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "format"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 42
    .local v6, "format":Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v11, v0, [[B

    .line 43
    .local v11, "pdus":[[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 44
    aget-object v17, v12, v7

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v10, v0

    .line 45
    .local v10, "part":[B
    aput-object v10, v11, v7

    .line 43
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 47
    .end local v10    # "part":[B
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "phone"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 48
    .local v14, "slotId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "subscription"

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 49
    .local v16, "subId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v11, v6, v0, v14, v1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->checkSmsCmd([[BLjava/lang/String;Landroid/content/Context;II)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 50
    const-string v17, "InboundSmsHandler"

    const-string v18, "checkSmsCmd is true, intercept this sms."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v15, 0x1

    .line 59
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "pdus":[[B
    .end local v12    # "pdusArray":[Ljava/lang/Object;
    .end local v14    # "slotId":I
    .end local v16    # "subId":I
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 61
    .local v8, "isServiceNumber":Z
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 62
    .local v9, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v9, :cond_2

    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 63
    const/16 v17, 0x0

    aget-object v17, v9, v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "address":Ljava/lang/String;
    invoke-static {v4}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    if-eqz v17, :cond_2

    .line 65
    const/4 v8, 0x1

    .line 71
    .end local v4    # "address":Ljava/lang/String;
    .end local v9    # "messages":[Landroid/telephony/SmsMessage;
    :cond_2
    :goto_2
    const-string v17, "miui.intent.SERVICE_NUMBER"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    if-nez v15, :cond_3

    .line 76
    :try_start_2
    const-string v17, "security"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v13

    .line 78
    .local v13, "securityManager":Lmiui/security/ISecurityManager;
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    if-eqz v17, :cond_3

    .line 79
    const/4 v15, 0x1

    .line 86
    .end local v13    # "securityManager":Lmiui/security/ISecurityManager;
    :cond_3
    :goto_3
    if-eqz v15, :cond_4

    .line 92
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 95
    const/16 v17, 0x1

    .line 100
    :goto_4
    return v17

    .line 53
    .end local v8    # "isServiceNumber":Z
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "InboundSmsHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception before InboundSmsDispatcher: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "isServiceNumber":Z
    :catch_1
    move-exception v5

    .line 69
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v17, "InboundSmsHandler"

    const-string v18, " ServiceNumber parse error "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 81
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 82
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 97
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v17, 0x0

    goto :goto_4
.end method

.method static checkSmsCmd([[BLjava/lang/String;Landroid/content/Context;II)Z
    .locals 7
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    if-eqz p0, :cond_0

    aget-object v6, p0, v4

    if-nez v6, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v4

    .line 113
    :cond_1
    aget-object v6, p0, v4

    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 114
    .local v3, "msg":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_3

    .line 120
    aget-object v6, p0, v2

    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v0, v6, p3, p4}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 126
    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v0, v6}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 129
    goto :goto_0
.end method

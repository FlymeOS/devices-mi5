.class public Lcom/android/internal/telephony/imsphone/ImsPhoneInjector;
.super Ljava/lang/Object;
.source "ImsPhoneInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;
    }
.end annotation


# static fields
.field protected static final EVENT_ADD_MULTI_PARTICIPANTS:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static addMultiParticipants(Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;Ljava/lang/String;)V
    .locals 6
    .param p0, "miuiImsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 50
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "callees":[Ljava/lang/String;
    aget-object v1, v0, v5

    invoke-interface {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;->getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v2

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;->addParticipantWithRsp(Ljava/lang/String;Landroid/os/Message;)V

    .line 53
    return-void
.end method

.method public static handleMessage(Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;Landroid/os/Message;)Z
    .locals 9
    .param p0, "miuiImsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 22
    const/4 v2, 0x1

    .line 23
    .local v2, "onHandled":Z
    const-string v3, "ImsPhoneInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 43
    const/4 v2, 0x0

    .line 46
    :goto_0
    return v2

    .line 26
    :pswitch_0
    const-string v3, "ImsPhoneInjector"

    const-string v4, "EVENT_ADD_MULTI_PARTICIPANTS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 28
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 29
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 30
    .local v1, "numbers":[Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_0

    .line 31
    const-string v3, "ImsPhoneInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add particpant successfully, index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v3, v1, v3

    invoke-interface {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;->getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;->addParticipantWithRsp(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 36
    :cond_0
    const-string v3, "ImsPhoneInjector"

    const-string v4, "Add all participants completed"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    .end local v1    # "numbers":[Ljava/lang/String;
    :cond_1
    const-string v3, "ImsPhoneInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add participant error, index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/android/internal/telephony/imsphone/MiuiImsPhoneImpl;
.super Ljava/lang/Object;
.source "MiuiImsPhoneImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneInjector$MiuiImsPhone;


# instance fields
.field private mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/MiuiImsPhoneImpl;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 31
    return-void
.end method


# virtual methods
.method public addParticipantWithRsp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/MiuiImsPhoneImpl;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addParticipant(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    if-eqz p2, :cond_0

    .line 42
    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 43
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/MiuiImsPhoneImpl;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

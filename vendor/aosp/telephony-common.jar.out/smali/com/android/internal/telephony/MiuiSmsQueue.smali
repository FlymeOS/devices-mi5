.class public Lcom/android/internal/telephony/MiuiSmsQueue;
.super Ljava/lang/Object;
.source "MiuiSmsQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSDispatcher"


# instance fields
.field private mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mIsSynced:Z

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mIsSynced:Z

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    .line 43
    return-void
.end method


# virtual methods
.method public enableSynced(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mIsSynced:Z

    .line 47
    return-void
.end method

.method public enqueueOrSendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v5, 0x1

    .line 70
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added message to queue. Queue size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mIsSynced:Z

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 84
    .local v0, "first":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 86
    .end local v0    # "first":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    monitor-exit v2

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processNextSms()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 58
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 62
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_0
    monitor-exit v2

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class final Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;
.super Ljava/lang/Thread;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DTMFRecognizeThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DTMFRecognizeThread"


# instance fields
.field private final mAudioDataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;)V
    .locals 0
    .param p2, "listener"    # Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/AudioData;",
            ">;",
            "Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "audioDataQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lmiui/telephony/dtmf/AudioData;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 310
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mAudioDataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 311
    iput-object p2, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 316
    const-string v5, "DTMFRecognizeThread"

    const-string v8, "run"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 320
    .local v6, "startTime":J
    :try_start_0
    new-instance v2, Lmiui/telephony/dtmf/DTMFUtil;

    invoke-direct {v2}, Lmiui/telephony/dtmf/DTMFUtil;-><init>()V

    .line 321
    .local v2, "dtmfUtil":Lmiui/telephony/dtmf/DTMFUtil;
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->isTimeout(J)Z
    invoke-static {v6, v7}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$300(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 322
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mAudioDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/dtmf/AudioData;

    .line 323
    .local v0, "audioFrame":Lmiui/telephony/dtmf/AudioData;
    invoke-virtual {v0}, Lmiui/telephony/dtmf/AudioData;->getData()[B

    move-result-object v5

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Lmiui/telephony/dtmf/DTMFUtil;->parseFrequency([BIZ)[F

    move-result-object v1

    .line 324
    .local v1, "detectedDual":[F
    if-eqz v1, :cond_0

    .line 327
    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-static {}, Lmiui/telephony/dtmf/DTMFUtil;->getTargetLowFrequency()F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {}, Lmiui/telephony/dtmf/DTMFUtil;->getTargetHighFrequency()F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    .line 329
    const-string v5, "DTMFRecognizeThread"

    const-string v8, "parsed frequencies success: %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    const/4 v4, 0x1

    .line 338
    .end local v0    # "audioFrame":Lmiui/telephony/dtmf/AudioData;
    .end local v1    # "detectedDual":[F
    :cond_1
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    if-eqz v5, :cond_2

    .line 339
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    invoke-interface {v5, v4}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;->onDTMFRecognized(Z)V

    .line 342
    .end local v2    # "dtmfUtil":Lmiui/telephony/dtmf/DTMFUtil;
    :cond_2
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "DTMFRecognizeThread"

    const-string v8, "dtmf audio recognize failed"

    invoke-static {v5, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    if-eqz v5, :cond_2

    .line 339
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    invoke-interface {v5, v4}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;->onDTMFRecognized(Z)V

    goto :goto_0

    .line 338
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v8, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    if-eqz v8, :cond_3

    .line 339
    iget-object v8, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    invoke-interface {v8, v4}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;->onDTMFRecognized(Z)V

    :cond_3
    throw v5
.end method

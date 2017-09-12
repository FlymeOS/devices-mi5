.class final Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;
.super Ljava/lang/Thread;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DTMFRecordThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;
    }
.end annotation


# static fields
.field private static final SAMPLE_RATE:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "DTMFRecordThread"


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

.field private final mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;)V
    .locals 0
    .param p2, "listener"    # Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/AudioData;",
            ">;",
            "Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "audioDataQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lmiui/telephony/dtmf/AudioData;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 255
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->mAudioDataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 256
    iput-object p2, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;

    .line 257
    return-void
.end method

.method private createAudioRecord(I)Landroid/media/AudioRecord;
    .locals 6
    .param p1, "bufferSize"    # I

    .prologue
    .line 260
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 266
    const-string v8, "DTMFRecordThread"

    const-string v9, "run"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v8, 0x1f40

    const/16 v9, 0x10

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    mul-int/lit8 v2, v8, 0x2

    .line 268
    .local v2, "bufferSize":I
    invoke-direct {p0, v2}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->createAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    .line 270
    .local v1, "audioRecord":Landroid/media/AudioRecord;
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 271
    const-string v8, "DTMFRecordThread"

    const-string v9, "AudioRecord not initialized"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v8, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;->onRecordInitialized(Z)V

    .line 273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const-string v8, "DTMFRecordThread"

    const-string v9, "dtmf release AudioRecord"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 296
    :goto_0
    return-void

    .line 276
    :cond_0
    :try_start_1
    iget-object v8, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->mListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;->onRecordInitialized(Z)V

    .line 277
    new-array v4, v2, [B

    .line 278
    .local v4, "readBuffer":[B
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 280
    .local v6, "startTime":J
    :goto_1
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_1

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->isTimeout(J)Z
    invoke-static {v6, v7}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$300(J)Z

    move-result v8

    if-nez v8, :cond_1

    .line 281
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    .line 282
    .local v5, "readBufferResult":I
    if-gtz v5, :cond_2

    .line 283
    const-string v8, "DTMFRecordThread"

    const-string v9, "read audio failed: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v5    # "readBufferResult":I
    :cond_1
    const-string v8, "DTMFRecordThread"

    const-string v9, "dtmf release AudioRecord"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 286
    .restart local v5    # "readBufferResult":I
    :cond_2
    :try_start_2
    new-instance v0, Lmiui/telephony/dtmf/AudioData;

    invoke-direct {v0, v4}, Lmiui/telephony/dtmf/AudioData;-><init>([B)V

    .line 287
    .local v0, "audioFrame":Lmiui/telephony/dtmf/AudioData;
    iget-object v8, p0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->mAudioDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 289
    .end local v0    # "audioFrame":Lmiui/telephony/dtmf/AudioData;
    .end local v4    # "readBuffer":[B
    .end local v5    # "readBufferResult":I
    .end local v6    # "startTime":J
    :catch_0
    move-exception v3

    .line 290
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "DTMFRecordThread"

    const-string v9, "dtmf audio read error"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    const-string v8, "DTMFRecordThread"

    const-string v9, "dtmf release AudioRecord"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 293
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    const-string v9, "DTMFRecordThread"

    const-string v10, "dtmf release AudioRecord"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    throw v8
.end method

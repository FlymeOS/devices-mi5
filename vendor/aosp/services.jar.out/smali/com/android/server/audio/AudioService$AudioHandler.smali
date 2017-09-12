.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 4245
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 4245
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4245
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4522
    if-eqz p1, :cond_0

    .line 4524
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4525
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4530
    :cond_0
    :goto_0
    return-void

    .line 4526
    :catch_0
    move-exception v0

    .line 4527
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 15

    .prologue
    .line 4318
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4319
    :try_start_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4320
    const-string v10, "AudioService"

    const-string v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    const/4 v10, 0x0

    monitor-exit v11

    .line 4436
    :goto_0
    return v10

    .line 4324
    :cond_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 4325
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_0

    .line 4435
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 4328
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)V

    .line 4330
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4337
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$2002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 4338
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v12, v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$5502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4339
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 4340
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 4341
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_2

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_3

    .line 4344
    :try_start_2
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .line 4347
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .line 4345
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_0
    move-exception v2

    .line 4346
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4347
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move v0, v1

    .line 4350
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_5

    .line 4351
    const-string v10, "AudioService"

    const-string v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4353
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4354
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1702(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4356
    :cond_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$5502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4357
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4358
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4359
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_0

    .line 4367
    :cond_5
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5600()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 4368
    .local v7, "poolId":[I
    const/4 v4, 0x0

    .local v4, "fileIdx":I
    :goto_2
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5600()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 4369
    const/4 v10, -0x1

    aput v10, v7, v4

    .line 4368
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4377
    :cond_6
    const/4 v6, 0x0

    .line 4378
    .local v6, "numSamples":I
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_3
    const/16 v10, 0xa

    if-ge v3, v10, :cond_a

    .line 4380
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_7

    .line 4378
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4383
    :cond_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_9

    .line 4384
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5600()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4387
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 4388
    .local v8, "sampleId":I
    if-gtz v8, :cond_8

    .line 4389
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4391
    :cond_8
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    .line 4392
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    .line 4393
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 4396
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_9
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    aget v13, v7, v13

    aput v13, v10, v12

    goto/16 :goto_4

    .line 4401
    :cond_a
    if-lez v6, :cond_b

    .line 4402
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4404
    const/4 v0, 0x3

    .line 4405
    const/4 v9, 0x1

    .local v9, "status":I
    move v1, v0

    .line 4406
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_5
    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_c

    .line 4408
    :try_start_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 4409
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    move v1, v0

    .line 4412
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    .line 4410
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_1
    move-exception v2

    .line 4411
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4412
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    .line 4415
    .end local v1    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    .restart local v0    # "attempts":I
    :cond_b
    const/4 v9, -0x1

    .line 4418
    .restart local v9    # "status":I
    :cond_c
    :goto_6
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 4419
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4420
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1702(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4422
    :cond_d
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$5502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4423
    if-eqz v9, :cond_10

    .line 4424
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    const/4 v3, 0x0

    :goto_7
    const/16 v10, 0xa

    if-ge v3, v10, :cond_f

    .line 4427
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_e

    .line 4428
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v10, v12

    .line 4426
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4432
    :cond_f
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4433
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4435
    :cond_10
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4436
    if-nez v9, :cond_11

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_12
    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_6
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4542
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 11
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 4473
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4475
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4476
    monitor-exit v10

    .line 4519
    :goto_0
    return-void

    .line 4480
    :cond_0
    if-gez p2, :cond_1

    .line 4481
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    # getter for: Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v2, v0

    .line 4486
    .local v2, "volFloat":F
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 4487
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4518
    :goto_2
    monitor-exit v10

    goto :goto_0

    .end local v2    # "volFloat":F
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4483
    :cond_1
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    .restart local v2    # "volFloat":F
    goto :goto_1

    .line 4490
    :cond_2
    :try_start_1
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4492
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5600()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4494
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4495
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4496
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 4497
    invoke-virtual {v9, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4498
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4503
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4509
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4510
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 4511
    .local v7, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4512
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 4513
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4514
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 4515
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 4445
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4446
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4447
    monitor-exit v4

    .line 4468
    :goto_0
    return-void

    .line 4450
    :cond_0
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4451
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4452
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4451
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4455
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    .line 4456
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 4455
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4459
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 4460
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4461
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 4462
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 4467
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4465
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4466
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4467
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4313
    :goto_0
    return-void

    .line 4312
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4296
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4306
    :cond_0
    :goto_0
    return-void

    .line 4299
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4302
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 4283
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4286
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4287
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4288
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4290
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4287
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4293
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4249
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4251
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4254
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4255
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    .line 4256
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 4260
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    .line 4261
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_0

    .line 4263
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4255
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 4268
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4270
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4278
    return-void

    .line 4268
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setForceUse(II)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 4534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;II)V

    .line 4535
    monitor-exit v1

    .line 4536
    return-void

    .line 4535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 4546
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 4705
    :cond_0
    :goto_0
    return-void

    .line 4549
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4553
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 4557
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4561
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4564
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_master_mute"

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 4573
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 4577
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onMediaServerDied()V

    goto :goto_0

    .line 4581
    :sswitch_6
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto :goto_0

    .line 4587
    :sswitch_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v8

    .line 4588
    .local v8, "loaded":Z
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 4589
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 4590
    .local v11, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v11

    .line 4591
    if-eqz v8, :cond_1

    :goto_1
    :try_start_0
    iput v0, v11, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 4592
    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 4593
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 4591
    goto :goto_1

    .line 4598
    .end local v8    # "loaded":Z
    .end local v11    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto :goto_0

    .line 4603
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 4604
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 4605
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 4610
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 4614
    :sswitch_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4618
    :sswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 4620
    .local v7, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v2, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iget-object v3, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4622
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4627
    .end local v7    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    :sswitch_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4628
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4632
    :sswitch_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4633
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4637
    :sswitch_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 4638
    .local v6, "N":I
    if-lez v6, :cond_2

    .line 4640
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 4641
    :try_start_2
    new-instance v12, Landroid/media/AudioRoutesInfo;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v12, v0}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 4642
    .local v12, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4643
    :goto_2
    if-lez v6, :cond_2

    .line 4644
    add-int/lit8 v6, v6, -0x1

    .line 4645
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Landroid/media/IAudioRoutesObserver;

    .line 4647
    .local v10, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3
    invoke-interface {v10, v12}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 4648
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4642
    .end local v10    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v12    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 4652
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4653
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 4658
    .end local v6    # "N":I
    :sswitch_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4662
    :sswitch_11
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4667
    :sswitch_12
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v1, v0

    goto :goto_3

    .line 4671
    :sswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 4675
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 4679
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_0

    .line 4683
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_0

    .line 4687
    :sswitch_17
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 4688
    .local v9, "musicActiveMs":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unsafe_volume_music_active_ms"

    const/4 v2, -0x2

    invoke-static {v0, v1, v9, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 4693
    .end local v9    # "musicActiveMs":I
    :sswitch_18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "microphone_mute"

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 4699
    :sswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_0

    .line 4702
    :sswitch_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 4546
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_7
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0xc -> :sswitch_f
        0xd -> :sswitch_a
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_6
        0x15 -> :sswitch_15
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_16
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_e
    .end sparse-switch
.end method

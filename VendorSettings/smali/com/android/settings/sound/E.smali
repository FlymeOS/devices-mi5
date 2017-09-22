.class public Lcom/android/settings/sound/E;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private XP:Lmiui/widget/SeekBar;

.field final synthetic aqV:Lcom/android/settings/sound/RingerVolumeFragment;

.field private aqW:Landroid/media/MediaPlayer;

.field private aqX:I

.field private aqY:I

.field private aqZ:Z

.field private ara:Landroid/net/Uri;

.field private arb:D

.field private arc:I

.field private ard:I

.field private are:Landroid/database/ContentObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;I)V
    .locals 6

    .prologue
    .line 392
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/E;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 395
    iput-object p1, p0, Lcom/android/settings/sound/E;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/E;->mHandler:Landroid/os/Handler;

    .line 366
    iput v1, p0, Lcom/android/settings/sound/E;->aqX:I

    .line 368
    iput v1, p0, Lcom/android/settings/sound/E;->aqY:I

    .line 375
    new-instance v0, Lcom/android/settings/sound/F;

    iget-object v1, p0, Lcom/android/settings/sound/E;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/F;-><init>(Lcom/android/settings/sound/E;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sound/E;->are:Landroid/database/ContentObserver;

    .line 396
    iput-object p2, p0, Lcom/android/settings/sound/E;->mContext:Landroid/content/Context;

    .line 397
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    .line 398
    iput p4, p0, Lcom/android/settings/sound/E;->mStreamType:I

    .line 399
    iput-object p3, p0, Lcom/android/settings/sound/E;->XP:Lmiui/widget/SeekBar;

    .line 400
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/E;->arc:I

    .line 401
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/E;->ard:I

    .line 403
    invoke-direct {p0, p3, p5}, Lcom/android/settings/sound/E;->a(Lmiui/widget/SeekBar;Landroid/net/Uri;)V

    .line 404
    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/E;I)I
    .locals 0

    .prologue
    .line 355
    iput p1, p0, Lcom/android/settings/sound/E;->aqX:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/sound/E;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Lmiui/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 429
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiui/widget/SeekBar;->setMax(I)V

    .line 430
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/sound/E;->arb:D

    .line 431
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/E;->cN(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 432
    invoke-virtual {p1, p0}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/sound/E;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/sound/E;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/sound/E;->are:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    if-nez p2, :cond_1

    .line 439
    iget v0, p0, Lcom/android/settings/sound/E;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 440
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 446
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment;->c(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/net/Uri;

    move-result-object p2

    .line 450
    :cond_1
    iput-object p2, p0, Lcom/android/settings/sound/E;->ara:Landroid/net/Uri;

    .line 451
    return-void

    .line 441
    :cond_2
    iget v0, p0, Lcom/android/settings/sound/E;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 442
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 443
    :cond_3
    iget v0, p0, Lcom/android/settings/sound/E;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 444
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/sound/E;)Lmiui/widget/SeekBar;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/sound/E;->XP:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/sound/E;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/sound/E;)I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/settings/sound/E;->mStreamType:I

    return v0
.end method

.method private uw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 565
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 567
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 568
    iput-object v1, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/sound/E;->aqZ:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sound/E;->aqZ:Z

    .line 574
    :cond_1
    return-void
.end method


# virtual methods
.method cN(I)I
    .locals 4

    .prologue
    .line 407
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings/sound/E;->arb:D

    mul-double/2addr v0, v2

    double-to-int v1, v0

    .line 408
    iget-object v0, p0, Lcom/android/settings/sound/E;->mContext:Landroid/content/Context;

    const-string v2, "ringer_volume_progress"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 410
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/sound/E;->mStreamType:I

    aget-object v2, v2, v3

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/settings/sound/E;->cO(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 414
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method cO(I)I
    .locals 6

    .prologue
    .line 419
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings/sound/E;->arb:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/sound/E;->arb:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 420
    if-lez p1, :cond_1

    if-nez v0, :cond_1

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/android/settings/sound/E;->ard:I

    if-ne v0, v1, :cond_0

    .line 423
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method cP(I)V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/E;->cO(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/E;->aqX:I

    .line 495
    return-void
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/settings/sound/E;->uw()V

    .line 606
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .prologue
    .line 477
    if-nez p3, :cond_0

    .line 491
    :goto_0
    return-void

    .line 481
    :cond_0
    int-to-double v0, p2

    iget-wide v2, p0, Lcom/android/settings/sound/E;->arb:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/sound/E;->arb:D

    div-double/2addr v0, v2

    iget v2, p0, Lcom/android/settings/sound/E;->arc:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 482
    iget v0, p0, Lcom/android/settings/sound/E;->arc:I

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/E;->cN(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/E;->mContext:Landroid/content/Context;

    const-string v1, "ringer_volume_progress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/sound/E;->mStreamType:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/E;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/settings/sound/E;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/sound/E;->startSample()V

    .line 513
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/E;->cP(I)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/sound/E;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/sound/E;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/E;->mStreamType:I

    iget v2, p0, Lcom/android/settings/sound/E;->aqX:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 518
    return-void
.end method

.method public startSample()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/sound/RingerVolumeFragment;->a(Lcom/android/settings/sound/E;)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/sound/E;->ara:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 527
    iput-object v4, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    .line 556
    :goto_0
    return-void

    .line 531
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    .line 532
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/sound/G;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/G;-><init>(Lcom/android/settings/sound/E;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings/sound/E;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/E;->ara:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 547
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 549
    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sound/E;->aqZ:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    iput-object v4, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 553
    :catch_1
    move-exception v0

    .line 554
    iput-object v4, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/settings/sound/E;->stopSample()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/sound/E;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/E;->are:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/sound/E;->XP:Lmiui/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 457
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqW:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/android/settings/sound/E;->uw()V

    .line 562
    :cond_0
    return-void
.end method

.method public uv()V
    .locals 5

    .prologue
    .line 460
    iget v0, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-static {v0}, Lcom/android/settings/gc;->getDefaultStreamVolume(I)I

    move-result v1

    .line 461
    iget v0, p0, Lcom/android/settings/sound/E;->mStreamType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/sound/E;->mStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/settings/sound/E;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {v0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "config_safe_media_volume_index"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 465
    iget-object v2, p0, Lcom/android/settings/sound/E;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {v2}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 466
    if-le v1, v0, :cond_0

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sound/E;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/sound/E;->mStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 471
    iput v0, p0, Lcom/android/settings/sound/E;->aqX:I

    .line 472
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

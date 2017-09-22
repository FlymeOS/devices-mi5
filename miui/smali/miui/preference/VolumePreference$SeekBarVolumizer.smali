.class public Lmiui/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# static fields
.field private static final DP:I = 0x0

.field private static final DQ:I = 0x1

.field private static final DR:I = 0x2

.field private static final DS:I = 0x3e8


# instance fields
.field private DB:I

.field private DF:Landroid/media/AudioManager;

.field private DG:I

.field private DH:Landroid/media/Ringtone;

.field private DI:I

.field private DL:Landroid/widget/SeekBar;

.field private DN:I

.field private DT:Landroid/database/ContentObserver;

.field final synthetic DU:Lmiui/preference/VolumePreference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6

    .prologue
    .line 276
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 279
    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DU:Lmiui/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    .line 257
    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    .line 264
    new-instance v0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DT:Landroid/database/ContentObserver;

    .line 280
    iput-object p2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 281
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DF:Landroid/media/AudioManager;

    .line 282
    iput p4, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    .line 283
    iput-object p3, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    .line 285
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 289
    invoke-direct {p0, p3, p5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->a(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 290
    return-void
.end method

.method private a(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DF:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 294
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DF:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DG:I

    .line 295
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DG:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 296
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 298
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DT:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    if-nez p2, :cond_0

    .line 303
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 304
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 312
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    .line 314
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 317
    :cond_1
    return-void

    .line 305
    :cond_2
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 306
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 308
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic a(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cx()V

    return-void
.end method

.method static synthetic b(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic c(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DF:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cv()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    return-void

    .line 339
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private cw()V
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DU:Lmiui/preference/VolumePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/VolumePreference;->onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    .line 346
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 350
    :cond_0
    return-void
.end method

.method private cx()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 354
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method private cy()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 363
    :cond_0
    return-void
.end method

.method static synthetic d(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    return v0
.end method


# virtual methods
.method I(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    .line 387
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    return-void
.end method

.method public changeVolumeBy(I)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 416
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->I(I)V

    .line 417
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cv()V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    .line 419
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 323
    :pswitch_0
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DF:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    iget v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 326
    :pswitch_1
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cw()V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cy()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DH:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 422
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    if-eq v0, v2, :cond_0

    .line 423
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 424
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->I(I)V

    .line 425
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cv()V

    .line 426
    iput v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    .line 433
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DN:I

    .line 429
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 430
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cx()V

    .line 431
    invoke-virtual {p0, v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->I(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 377
    if-nez p3, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0, p2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->I(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V
    .locals 2

    .prologue
    .line 443
    iget v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    iget v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DG:I

    .line 445
    iget v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    .line 446
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->I(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    if-ltz v0, :cond_0

    .line 437
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DI:I

    iput v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    .line 438
    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DG:I

    iput v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 440
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cv()V

    .line 396
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DF:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DB:I

    iget v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DG:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 373
    return-void
.end method

.method public startSample()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cv()V

    .line 404
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 366
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cx()V

    .line 367
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DT:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 368
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->DL:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 369
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->cx()V

    .line 408
    return-void
.end method

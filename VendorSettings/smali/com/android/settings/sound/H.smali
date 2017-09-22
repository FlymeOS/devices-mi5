.class public Lcom/android/vendorsettings/sound/H;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private Qv:Landroid/content/SharedPreferences;

.field private akt:I

.field private aqX:I

.field private arb:D

.field private arg:Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

.field private arh:Lcom/android/vendorsettings/sound/J;

.field private ari:Landroid/media/Ringtone;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private vI:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/H;->aqX:I

    .line 59
    iput-object p1, p0, Lcom/android/vendorsettings/sound/H;->arg:Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    .line 60
    invoke-virtual {p1}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->uB()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/vendorsettings/sound/H;->arb:D

    .line 64
    new-instance v0, Lcom/android/vendorsettings/sound/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/sound/J;-><init>(Lcom/android/vendorsettings/sound/H;Lcom/android/vendorsettings/sound/I;)V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->arh:Lcom/android/vendorsettings/sound/J;

    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->Qv:Landroid/content/SharedPreferences;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/sound/H;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(FFI)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 314
    .line 315
    sub-float v3, p2, p1

    .line 316
    cmpl-float v0, v3, v6

    if-nez v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v0, p1

    :goto_1
    add-int/lit8 v2, p3, 0x1

    if-ge v1, v2, :cond_2

    .line 322
    cmpl-float v2, v3, v6

    if-lez v2, :cond_4

    .line 323
    cmpl-float v2, v0, p2

    if-ltz v2, :cond_3

    .line 343
    :cond_2
    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setVolume(F)V

    .line 346
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0

    .line 326
    :cond_3
    int-to-float v0, v1

    int-to-float v2, p3

    div-float/2addr v0, v2

    .line 327
    mul-float/2addr v0, v0

    .line 335
    :goto_2
    mul-float/2addr v0, v3

    add-float v2, p1, v0

    .line 336
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setVolume(F)V

    .line 338
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 329
    :cond_4
    cmpg-float v2, v0, p2

    if-lez v2, :cond_2

    .line 332
    int-to-float v0, v1

    int-to-float v2, p3

    div-float/2addr v0, v2

    sub-float v0, v7, v0

    .line 333
    mul-float/2addr v0, v0

    sub-float v0, v7, v0

    goto :goto_2

    .line 339
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private a(JZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 208
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/sound/H;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/H;->bd(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/sound/H;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    return v0
.end method

.method private b(JZ)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 253
    :cond_0
    return-void
.end method

.method private bb(Z)V
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/vendorsettings/sound/H;->a(JZ)V

    .line 205
    return-void
.end method

.method private bc(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    const-string v0, "SeekBarVolumizer"

    const-string v1, "onStartSample"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->Qv:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "volume_sample_stream"

    iget v2, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "SeekBarVolumizer"

    const-string v1, "onStartSample isPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const-string v0, "SeekBarVolumizer"

    const-string v1, "onStartSample isStreamActive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz p1, :cond_1

    .line 231
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1, v3}, Lcom/android/vendorsettings/sound/H;->a(JZ)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/vendorsettings/sound/H;->ux()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 238
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    const-string v1, "startLocalPlayer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/whetstone/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private bd(Z)V
    .locals 2

    .prologue
    .line 244
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/vendorsettings/sound/H;->b(JZ)V

    .line 245
    return-void
.end method

.method private be(Z)V
    .locals 3

    .prologue
    .line 256
    const-string v0, "SeekBarVolumizer"

    const-string v1, "onStopSample"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 258
    if-eqz p1, :cond_0

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/sound/H;->a(FFI)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    .line 264
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->vI:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/sound/H;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/sound/H;)Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->arg:Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    return-object v0
.end method

.method private uA()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->ari:Landroid/media/Ringtone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method private ux()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 194
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 198
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 196
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private uy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    :cond_0
    return-void
.end method

.method private uz()V
    .locals 4

    .prologue
    .line 274
    const/16 v0, 0x400

    .line 275
    iget v1, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    iget-object v2, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/vendorsettings/sound/H;->aqX:I

    if-nez v1, :cond_1

    .line 277
    :cond_0
    const v0, 0x100400

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    iget v3, p0, Lcom/android/vendorsettings/sound/H;->aqX:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 280
    return-void
.end method


# virtual methods
.method public cQ(I)I
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 104
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/vendorsettings/sound/H;->arb:D

    div-double/2addr v2, v8

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/vendorsettings/sound/H;->arb:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 105
    if-lez p1, :cond_1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/android/vendorsettings/sound/H;->arb:D

    div-double/2addr v4, v8

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, p0, Lcom/android/vendorsettings/sound/H;->arb:D

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public cR(I)I
    .locals 4

    .prologue
    .line 114
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/vendorsettings/sound/H;->arb:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 309
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 297
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/H;->uz()V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/H;->bc(Z)V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/H;->be(Z)V

    goto :goto_0

    .line 306
    :pswitch_3
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/H;->uA()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 79
    if-eqz p3, :cond_1

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/sound/H;->cQ(I)I

    move-result v0

    .line 81
    iget v1, p0, Lcom/android/vendorsettings/sound/H;->aqX:I

    if-eq v1, v0, :cond_0

    .line 82
    iput v0, p0, Lcom/android/vendorsettings/sound/H;->aqX:I

    .line 83
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/H;->uy()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->arg:Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 87
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    const-string v0, "volume_sample_stream"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->Qv:Landroid/content/SharedPreferences;

    const-string v1, "volume_sample_stream"

    iget v2, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    if-eq v0, v1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/H;->bd(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/H;->bb(Z)V

    .line 92
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/H;->bd(Z)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-wide/16 v0, 0x7d0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/sound/H;->b(JZ)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/H;->bd(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->Qv:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->arh:Lcom/android/vendorsettings/sound/J;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/J;->setListening(Z)V

    .line 173
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->arh:Lcom/android/vendorsettings/sound/J;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/J;->setListening(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->Qv:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 167
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/vendorsettings/sound/H;->vI:Landroid/widget/SeekBar;

    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/vendorsettings/sound/H;->akt:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->arg:Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/sound/H;->cQ(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/vendorsettings/sound/H;->vI:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/sound/H;->cR(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->vI:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/vendorsettings/sound/H;->pause()V

    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/H;->mHandler:Landroid/os/Handler;

    .line 181
    :cond_0
    return-void
.end method

.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$1;,
        Lmiui/media/Mp3Recorder$a;,
        Lmiui/media/Mp3Recorder$b;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field private static final An:I = 0x1

.field private static final Ap:I = 0x0

.field private static final Aq:I = 0x1

.field private static final Ar:I = 0x2

.field private static final As:I = 0x3

.field private static final At:I = 0x4

.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_FILE_NOT_EXIST:I = 0x8

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field public static final VBR_QUALITY_HIGH:I = 0x2

.field public static final VBR_QUALITY_LOW:I = 0x9

.field public static final VBR_QUALITY_MEDIUM:I = 0x6

.field private static final zV:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;


# instance fields
.field private Aa:I

.field private Ab:I

.field private Ac:J

.field private Ad:J

.field private Ae:Ljava/lang/String;

.field private Af:[S

.field private Ag:[B

.field private Ah:Landroid/media/AudioRecord;

.field private Ai:Lmiui/media/Mp3Encoder;

.field private Aj:Lmiui/media/Mp3Recorder$b;

.field private Ak:I

.field private Al:I

.field private Am:Lmiui/media/Mp3Recorder$RecordingErrorListener;

.field private Ao:Landroid/os/Handler;

.field private gp:Ljava/io/FileOutputStream;

.field private gz:J

.field private zQ:I

.field private zR:I

.field private zS:I

.field private zT:I

.field private zU:I

.field private zW:I

.field private zX:I

.field private zY:Ljava/lang/String;

.field private zZ:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/Mp3Recorder;->zV:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lmiui/media/Mp3Recorder$a;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$a;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->Ao:Landroid/os/Handler;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    .line 116
    return-void

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v1, Lmiui/media/Mp3Recorder$a;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$a;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->Ao:Landroid/os/Handler;

    goto :goto_0

    .line 112
    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Could not create event handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ao:Landroid/os/Handler;

    goto :goto_0
.end method

.method private E(I)V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ao:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ao:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 565
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 566
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ao:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    return v0
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;[SI)I
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->a([SI)I

    move-result v0

    return v0
.end method

.method private a([SI)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 461
    move v2, v0

    move v1, v0

    .line 462
    :goto_0
    if-ge v2, p2, :cond_1

    .line 463
    aget-short v0, p1, v2

    if-gez v0, :cond_0

    aget-short v0, p1, v2

    neg-int v0, v0

    .line 464
    :goto_1
    if-le v0, v1, :cond_2

    .line 462
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_0
    aget-short v0, p1, v2

    goto :goto_1

    .line 468
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;J)J
    .locals 3

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Ac:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Ac:J

    return-wide v0
.end method

.method private a(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 488
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    sget-object v0, Lmiui/media/Mp3Recorder;->zV:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    sget-object v0, Lmiui/media/Mp3Recorder;->zV:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result v0

    .line 491
    const-string v1, "Mp3Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Do not support extra parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->E(I)V

    return-void
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lmiui/media/Mp3Recorder;->Ab:I

    return p1
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;J)J
    .locals 3

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Ad:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Ad:J

    return-wide v0
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->gp:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic c(Lmiui/media/Mp3Recorder;)[S
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Af:[S

    return-object v0
.end method

.method static synthetic d(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic e(Lmiui/media/Mp3Recorder;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lmiui/media/Mp3Recorder;->Aa:I

    return v0
.end method

.method static synthetic f(Lmiui/media/Mp3Recorder;)[B
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ag:[B

    return-object v0
.end method

.method static synthetic g(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    return-object v0
.end method

.method static synthetic h(Lmiui/media/Mp3Recorder;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lmiui/media/Mp3Recorder;->zQ:I

    return v0
.end method

.method static synthetic i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Am:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object v0
.end method

.method static synthetic j(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->zZ:Ljava/io/File;

    return-object v0
.end method

.method static synthetic k(Lmiui/media/Mp3Recorder;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Ad:J

    return-wide v0
.end method

.method static synthetic l(Lmiui/media/Mp3Recorder;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->gz:J

    return-wide v0
.end method

.method static synthetic m(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->zY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ab:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Ad:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .prologue
    .line 340
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Ac:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->zX:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/Mp3Recorder;->zQ:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lmiui/media/Mp3Recorder;->zV:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 484
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lmiui/media/Mp3Recorder;->Ak:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$b;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :goto_0
    :try_start_3
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 368
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 370
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    .line 372
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    :try_start_4
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v4, 0x2

    .line 276
    iget v0, p0, Lmiui/media/Mp3Recorder;->zX:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->Aa:I

    invoke-static {v0, v1, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->Al:I

    .line 278
    iget v0, p0, Lmiui/media/Mp3Recorder;->Al:I

    if-gez v0, :cond_0

    .line 279
    const-string v0, "Mp3Recorder"

    const-string v1, "Error when getting min buffer size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Al:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Af:[S

    .line 283
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zW:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->zX:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->Aa:I

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->Af:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    .line 285
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ae:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Recorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 286
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget v0, p0, Lmiui/media/Mp3Recorder;->Aa:I

    if-ne v0, v7, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmiui/media/Mp3Recorder;->zR:I

    .line 288
    iget v0, p0, Lmiui/media/Mp3Recorder;->Aa:I

    if-ne v0, v7, :cond_2

    :goto_1
    iput v4, p0, Lmiui/media/Mp3Recorder;->zQ:I

    .line 291
    const-wide v0, 0x40bc200000000000L    # 7200.0

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Af:[S

    array-length v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ag:[B

    .line 292
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zX:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setInSampleRate(I)V

    .line 293
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zR:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setOutMode(I)V

    .line 294
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zQ:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setChannelCount(I)V

    .line 295
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zX:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setOutSampleRate(I)V

    .line 296
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zS:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setOutBitRate(I)V

    .line 297
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zT:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setQuality(I)V

    .line 298
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zU:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setVBRQuality(I)V

    .line 299
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->init()Z

    .line 301
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->zY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->zZ:Ljava/io/File;

    .line 302
    iput v6, p0, Lmiui/media/Mp3Recorder;->Ak:I

    .line 303
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v4, v6

    .line 288
    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    .line 454
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->close()I

    .line 457
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 253
    iput v1, p0, Lmiui/media/Mp3Recorder;->Ak:I

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    .line 255
    const/4 v0, 0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->zW:I

    .line 256
    const v0, 0xac44

    iput v0, p0, Lmiui/media/Mp3Recorder;->zX:I

    .line 257
    const/16 v0, 0x10

    iput v0, p0, Lmiui/media/Mp3Recorder;->Aa:I

    .line 258
    iput v1, p0, Lmiui/media/Mp3Recorder;->zT:I

    .line 259
    iput v1, p0, Lmiui/media/Mp3Recorder;->Ak:I

    .line 260
    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->zS:I

    .line 261
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->Ac:J

    .line 262
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->Ad:J

    .line 263
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->gz:J

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->zU:I

    .line 265
    new-instance v0, Lmiui/media/Mp3Encoder;

    invoke-direct {v0}, Lmiui/media/Mp3Encoder;-><init>()V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    .line 266
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 380
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    if-ne v0, v6, :cond_1

    .line 381
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->zW:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->zX:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->Aa:I

    const/4 v4, 0x2

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->Af:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    .line 383
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ae:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Recorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 386
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    :cond_0
    :try_start_1
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    .line 391
    new-instance v0, Lmiui/media/Mp3Recorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$b;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    .line 392
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$b;->start()V

    .line 393
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 395
    :cond_1
    :try_start_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setAudioChannel(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lmiui/media/Mp3Recorder;->Aa:I

    .line 204
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lmiui/media/Mp3Recorder;->zX:I

    .line 144
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lmiui/media/Mp3Recorder;->zW:I

    .line 135
    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lmiui/media/Mp3Recorder;->zV:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not support extra parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->Ae:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 3

    .prologue
    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 227
    iget v0, p0, Lmiui/media/Mp3Recorder;->zS:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->gz:J

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->gz:J

    goto :goto_0
.end method

.method public setMaxFileSize(J)V
    .locals 3

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 213
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->gz:J

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->gz:J

    goto :goto_0
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->Am:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    .line 162
    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lmiui/media/Mp3Recorder;->zS:I

    .line 153
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->zY:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lmiui/media/Mp3Recorder;->zT:I

    .line 172
    return-void
.end method

.method public setVBRQuality(I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Lmiui/media/Mp3Recorder;->zU:I

    .line 247
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    if-ne v0, v1, :cond_1

    .line 313
    :cond_0
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 317
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 318
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Ac:J

    .line 322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Ad:J

    .line 323
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    .line 324
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 325
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->zZ:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->gp:Ljava/io/FileOutputStream;

    .line 329
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lmiui/media/Mp3Recorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$b;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    .line 331
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$b;->start()V

    .line 332
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->Ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 406
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/Mp3Recorder;->Ak:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$b;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$b;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Aj:Lmiui/media/Mp3Recorder$b;

    .line 416
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ag:[B

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Ag:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lmiui/media/Mp3Encoder;->flush([BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 418
    if-lez v0, :cond_4

    .line 419
    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->gp:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Ag:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 424
    iget v0, p0, Lmiui/media/Mp3Recorder;->zU:I

    if-ltz v0, :cond_2

    iget v0, p0, Lmiui/media/Mp3Recorder;->zU:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_2

    .line 425
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ai:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->zY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->writeVBRHeader(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 431
    :cond_2
    :try_start_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->gp:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 435
    :goto_1
    :try_start_5
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 437
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_3
    :goto_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    :try_start_6
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 421
    :cond_4
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer flush must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 427
    :catch_1
    move-exception v0

    .line 428
    :try_start_8
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be written when flush"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 431
    :try_start_9
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->gp:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 435
    :goto_3
    :try_start_a
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 437
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 432
    :catch_2
    move-exception v0

    .line 433
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 432
    :catch_3
    move-exception v0

    .line 433
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 430
    :catchall_1
    move-exception v0

    .line 431
    :try_start_b
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->gp:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 435
    :goto_4
    :try_start_c
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    if-eqz v1, :cond_5

    .line 436
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ah:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 437
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v0

    .line 432
    :catch_4
    move-exception v1

    .line 433
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 442
    :cond_6
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/media/Mp3Recorder;->Ak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder shoul not be stopped in state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/media/Mp3Recorder;->Ak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

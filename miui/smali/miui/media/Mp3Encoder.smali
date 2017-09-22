.class public Lmiui/media/Mp3Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_AUDIO_CHANNEL:I = 0x10

.field public static final DEFAULT_CHANNEL_COUNT:I = 0x1

.field public static final DEFAULT_OUT_BIT_RATE:I = 0x40

.field public static final DEFAULT_OUT_MODE:I = 0x3

.field public static final DEFAULT_QUALITY:I = 0x0

.field public static final DEFAULT_SAMPLE_RATE:I = 0xac44

.field public static final DEFAULT_VBR_QUALITY:I = -0x1

.field public static final OUT_MODE_MONO:I = 0x3

.field public static final OUT_MODE_STEREO:I


# instance fields
.field private zN:J

.field private zO:I

.field private zP:I

.field private zQ:I

.field private zR:I

.field private zS:I

.field private zT:I

.field private zU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0xac44

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    .line 25
    iput v2, p0, Lmiui/media/Mp3Encoder;->zO:I

    .line 26
    iput v2, p0, Lmiui/media/Mp3Encoder;->zP:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lmiui/media/Mp3Encoder;->zQ:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Encoder;->zR:I

    .line 29
    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Encoder;->zS:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/Mp3Encoder;->zT:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/Mp3Encoder;->zU:I

    return-void
.end method

.method private native lame_close(J)I
.end method

.method private native lame_encode(J[S[SI[BI)I
.end method

.method private native lame_encode_interleaved(J[SI[BI)I
.end method

.method private native lame_flush(J[BI)I
.end method

.method private native lame_init(IIIIIII)J
.end method

.method private native lame_samples_to_encode(J)I
.end method

.method private native lame_write_vbr_header(JLjava/lang/String;)I
.end method


# virtual methods
.method public close()I
    .locals 6

    .prologue
    .line 183
    const/4 v0, -0x1

    .line 184
    iget-wide v2, p0, Lmiui/media/Mp3Encoder;->zN:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 185
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Encoder;->lame_close(J)I

    move-result v0

    .line 186
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/media/Mp3Encoder;->zN:J

    .line 188
    :cond_0
    return v0
.end method

.method public encode([S[SI[BI)I
    .locals 9

    .prologue
    .line 129
    iget-wide v2, p0, Lmiui/media/Mp3Encoder;->zN:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lmiui/media/Mp3Encoder;->lame_encode(J[S[SI[BI)I

    move-result v0

    return v0
.end method

.method public encodeInterleaved([SI[BI)I
    .locals 8

    .prologue
    .line 147
    iget-wide v2, p0, Lmiui/media/Mp3Encoder;->zN:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lmiui/media/Mp3Encoder;->lame_encode_interleaved(J[SI[BI)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 193
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 194
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 195
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Encoder;->lame_close(J)I

    .line 197
    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    invoke-direct {p0, v0, v1, p1, p2}, Lmiui/media/Mp3Encoder;->lame_flush(J[BI)I

    move-result v0

    return v0
.end method

.method public getSamplesToEncode()I
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Encoder;->lame_samples_to_encode(J)I

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 8

    .prologue
    .line 105
    iget v1, p0, Lmiui/media/Mp3Encoder;->zO:I

    iget v2, p0, Lmiui/media/Mp3Encoder;->zR:I

    iget v3, p0, Lmiui/media/Mp3Encoder;->zQ:I

    iget v4, p0, Lmiui/media/Mp3Encoder;->zP:I

    iget v5, p0, Lmiui/media/Mp3Encoder;->zS:I

    iget v6, p0, Lmiui/media/Mp3Encoder;->zT:I

    iget v7, p0, Lmiui/media/Mp3Encoder;->zU:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lmiui/media/Mp3Encoder;->lame_init(IIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    .line 107
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setChannelCount(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lmiui/media/Mp3Encoder;->zQ:I

    .line 89
    return-void
.end method

.method public setInSampleRate(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lmiui/media/Mp3Encoder;->zO:I

    .line 81
    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lmiui/media/Mp3Encoder;->zS:I

    .line 73
    return-void
.end method

.method public setOutMode(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lmiui/media/Mp3Encoder;->zR:I

    .line 65
    return-void
.end method

.method public setOutSampleRate(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lmiui/media/Mp3Encoder;->zP:I

    .line 52
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lmiui/media/Mp3Encoder;->zT:I

    .line 44
    return-void
.end method

.method public setVBRQuality(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lmiui/media/Mp3Encoder;->zU:I

    .line 98
    return-void
.end method

.method public writeVBRHeader(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->zN:J

    invoke-direct {p0, v0, v1, p1}, Lmiui/media/Mp3Encoder;->lame_write_vbr_header(JLjava/lang/String;)I

    .line 176
    return-void
.end method

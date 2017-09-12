.class public Lmiui/telephony/dtmf/DTMFUtil;
.super Ljava/lang/Object;
.source "DTMFUtil.java"


# static fields
.field private static final DECIBEL_THRESHOLD_LIST:[I

.field private static final DEFAULT_SAMPLE_RATE:I = 0x1f40

.field private static final FREQUENCE_INDEX_GAP:I = 0x5

.field private static final HEALTHY:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFUtil"

.field private static final SAMPLE_RATE_LIST:[I

.field private static final STEP:I = 0x100

.field private static final TARGET_FREQUENCIES:[F

.field private static final TARGET_HIGH_FREQUENCY:F = 1075.0f

.field private static final TARGET_LOW_FREQUENCY:F = 600.0f

.field private static final VERSION:I = 0x2


# instance fields
.field private mHealthy:I

.field private mPreCalculatedCosines:[F

.field private mSampleRate:I

.field private mWnkList:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0x44160000    # 600.0f
        0x442e4000    # 697.0f
        0x44408000    # 770.0f
        0x44550000    # 852.0f
        0x446b4000    # 941.0f
        0x44866000    # 1075.0f
        0x44972000    # 1209.0f
        0x44a70000    # 1336.0f
        0x44b8a000    # 1477.0f
        0x44cc2000    # 1633.0f
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0x7d00
        0xac44
    .end array-data

    .line 22
    :array_2
    .array-data 4
        0x17
        0x20
        0x1f
        0x22
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x1f40

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lmiui/telephony/dtmf/DTMFUtil;-><init>(II)V

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "sampleRate"    # I
    .param p2, "healthy"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    .line 37
    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    .line 63
    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    .line 64
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    .line 65
    if-lez p2, :cond_0

    .end local p2    # "healthy":I
    :goto_0
    iput p2, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    .line 66
    return-void

    .line 65
    .restart local p2    # "healthy":I
    :cond_0
    const/4 p2, 0x3

    goto :goto_0
.end method

.method private bufferFilter([FI)[F
    .locals 9
    .param p1, "buffer"    # [F
    .param p2, "len"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    array-length v5, p1

    if-gt v5, v8, :cond_0

    .line 204
    .end local p1    # "buffer":[F
    :goto_0
    return-object p1

    .line 186
    .restart local p1    # "buffer":[F
    :cond_0
    new-array v4, v8, [F

    .line 187
    .local v4, "ret":[F
    aget v3, p1, v6

    .line 188
    .local v3, "low":F
    aget v0, p1, v7

    .line 189
    .local v0, "high":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_2

    .line 190
    aget v5, p1, v1

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_1

    .line 191
    aget v3, p1, v1

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 194
    :cond_2
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_2
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_4

    .line 195
    aget v5, p1, v2

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_3

    .line 196
    aget v0, p1, v2

    .line 194
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 199
    :cond_4
    aget v5, p1, v6

    cmpl-float v5, v3, v5

    if-nez v5, :cond_5

    aget v5, p1, v7

    cmpl-float v5, v0, v5

    if-nez v5, :cond_5

    .line 200
    aget v5, p1, v6

    aput v5, v4, v6

    .line 201
    aget v5, p1, v7

    aput v5, v4, v7

    move-object p1, v4

    .line 202
    goto :goto_0

    .line 204
    :cond_5
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private dtmfDetectAndValidate([BIZ)[F
    .locals 11
    .param p1, "audioDataList"    # [B
    .param p2, "bitPerSample"    # I
    .param p3, "sign"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, "segfrom":I
    const/4 v6, 0x0

    .line 134
    .local v6, "segto":I
    const/4 v8, 0x0

    .line 135
    .local v8, "vcnt":I
    const/16 v9, 0x100

    new-array v1, v9, [B

    .line 136
    .local v1, "bufferSegment":[B
    iget v9, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    mul-int/lit8 v9, v9, 0x2

    new-array v3, v9, [F

    .line 137
    .local v3, "detectedBuffer":[F
    const/4 v9, 0x2

    new-array v2, v9, [F

    .line 138
    .local v2, "detect":[F
    new-instance v7, Lmiui/telephony/dtmf/DTMFAudioInputStream;

    invoke-direct {v7, p1}, Lmiui/telephony/dtmf/DTMFAudioInputStream;-><init>([B)V

    .line 140
    .local v7, "streamReader":Lmiui/telephony/dtmf/DTMFAudioInputStream;
    new-instance v0, Lmiui/telephony/dtmf/DTMFDataConveter;

    invoke-direct {v0, p2, p3}, Lmiui/telephony/dtmf/DTMFDataConveter;-><init>(IZ)V

    .line 141
    .local v0, "Converter":Lmiui/telephony/dtmf/DTMFDataConveter;
    :cond_0
    :goto_0
    iget v9, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ge v8, v9, :cond_1

    .line 142
    array-length v9, p1

    if-lt v6, v9, :cond_2

    .line 158
    :cond_1
    invoke-virtual {v7}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->close()V

    .line 159
    iget v9, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ne v8, v9, :cond_4

    .line 160
    mul-int/lit8 v9, v8, 0x2

    invoke-direct {p0, v3, v9}, Lmiui/telephony/dtmf/DTMFUtil;->bufferFilter([FI)[F

    move-result-object v9

    .line 162
    :goto_1
    return-object v9

    .line 145
    :cond_2
    move v5, v6

    .line 146
    add-int/lit16 v9, v6, 0x100

    array-length v10, p1

    if-le v9, v10, :cond_3

    array-length v6, p1

    .line 148
    :goto_2
    sub-int v9, v6, v5

    invoke-virtual {v7, v1, v9}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read([BI)I

    .line 150
    invoke-virtual {v0, v1}, Lmiui/telephony/dtmf/DTMFDataConveter;->byteToFloat([B)[F

    move-result-object v4

    .line 151
    .local v4, "floatbuff":[F
    invoke-direct {p0, v4}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfFrequenciesDetecter([F)[F

    move-result-object v2

    .line 152
    if-eqz v2, :cond_0

    .line 153
    mul-int/lit8 v9, v8, 0x2

    const/4 v10, 0x0

    aget v10, v2, v10

    aput v10, v3, v9

    .line 154
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v3, v9

    .line 155
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 146
    .end local v4    # "floatbuff":[F
    :cond_3
    add-int/lit16 v6, v6, 0x100

    goto :goto_2

    .line 162
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private dtmfFrequenciesDetecter([F)[F
    .locals 20
    .param p1, "audioDataList"    # [F

    .prologue
    .line 86
    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v15, v15

    new-array v3, v15, [Z

    .line 87
    .local v3, "detectFrequencies":[Z
    const/4 v15, 0x2

    new-array v10, v15, [F

    .line 88
    .local v10, "outpair":[F
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/high16 v17, -0x40800000    # -1.0f

    aput v17, v10, v16

    aput v17, v10, v15

    .line 90
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lmiui/telephony/dtmf/DTMFUtil;->getDecibelThreshold(I)I

    move-result v14

    .line 91
    .local v14, "threshold":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 92
    const-string v15, "DTMFUtil"

    const-string v16, "can not get threshold"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v10    # "outpair":[F
    :cond_0
    :goto_0
    return-object v10

    .line 96
    .restart local v10    # "outpair":[F
    :cond_1
    const/4 v11, 0x0

    .local v11, "skn0":F
    const/4 v12, 0x0

    .local v12, "skn1":F
    const/4 v13, 0x0

    .line 97
    .local v13, "skn2":F
    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v15, v15

    new-array v2, v15, [F

    .line 98
    .local v2, "calculatedDual":[F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v15, v15

    if-ge v7, v15, :cond_4

    .line 99
    const/4 v13, 0x0

    move v12, v13

    move v11, v13

    .line 100
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v6, v15, :cond_2

    .line 101
    move v13, v12

    .line 102
    move v12, v11

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    aget v15, v15, v7

    mul-float/2addr v15, v12

    sub-float/2addr v15, v13

    aget v16, p1, v6

    add-float v11, v15, v16

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 106
    :cond_2
    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    aget v15, v15, v7

    mul-float/2addr v15, v12

    sub-float v15, v11, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log10(D)D

    move-result-wide v18

    mul-double v4, v16, v18

    .line 108
    .local v4, "dbdata":D
    double-to-float v15, v4

    aput v15, v2, v7

    .line 110
    aget v15, v2, v7

    int-to-float v0, v14

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 111
    const/4 v15, 0x1

    aput-boolean v15, v3, v7

    .line 98
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 115
    .end local v4    # "dbdata":D
    .end local v6    # "i":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    array-length v15, v3

    div-int/lit8 v15, v15, 0x2

    if-ge v8, v15, :cond_6

    .line 116
    add-int/lit8 v15, v8, 0x5

    sget-object v16, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v9, v15, v16

    .line 117
    .local v9, "matchIndex":I
    aget-boolean v15, v3, v8

    if-eqz v15, :cond_5

    aget-boolean v15, v3, v9

    if-eqz v15, :cond_5

    .line 118
    const/4 v15, 0x0

    sget-object v16, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v16, v16, v8

    aput v16, v10, v15

    .line 119
    const/4 v15, 0x1

    sget-object v16, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v16, v16, v9

    aput v16, v10, v15

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmiui/telephony/dtmf/DTMFUtil;->isValidate([F)Z

    move-result v15

    if-nez v15, :cond_0

    .line 115
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 126
    .end local v9    # "matchIndex":I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static getAudioFloatBuffer([FII)[F
    .locals 24
    .param p0, "dualFrequence"    # [F
    .param p1, "sampleRate"    # I
    .param p2, "time"    # I

    .prologue
    .line 268
    mul-int v13, p1, p2

    div-int/lit16 v12, v13, 0x3e8

    .line 269
    .local v12, "sampleSize":I
    move-object/from16 v0, p0

    array-length v13, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v13, v0, :cond_1

    .line 270
    const-string v13, "DTMFUtil"

    const-string v20, "parameter buffer is null"

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v6, 0x0

    .line 285
    :cond_0
    return-object v6

    .line 274
    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 275
    .local v2, "amplitudeF0":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 276
    .local v4, "amplitudeF1":D
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v13, 0x0

    aget v13, p0, v13

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v16, v20, v22

    .line 277
    .local v16, "twoPiF0":D
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v13, 0x1

    aget v13, p0, v13

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v18, v20, v22

    .line 278
    .local v18, "twoPiF1":D
    new-array v6, v12, [F

    .line 279
    .local v6, "buffer":[F
    const/4 v7, 0x0

    .local v7, "sample":I
    :goto_0
    array-length v13, v6

    if-ge v7, v13, :cond_0

    .line 280
    int-to-double v0, v7

    move-wide/from16 v20, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v14, v20, v22

    .line 281
    .local v14, "time_detail":D
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v22, v16, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v8, v20, v22

    .line 282
    .local v8, "f0Component":D
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v22, v18, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v10, v20, v22

    .line 283
    .local v10, "f1Component":D
    add-double v20, v8, v10

    move-wide/from16 v0, v20

    double-to-float v13, v0

    aput v13, v6, v7

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private getDecibelThreshold(I)I
    .locals 4
    .param p1, "sampleRate"    # I

    .prologue
    const/4 v1, -0x1

    .line 222
    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v2, v2

    sget-object v3, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 223
    const-string v2, "DTMFUtil"

    const-string v3, "the number of SAMPLE_RATE_LIST and DECIBEL_THRESHOLD_LIST can not match"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return v1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 228
    .local v0, "it":I
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 229
    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_2

    .line 233
    :cond_1
    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 234
    const-string v2, "DTMFUtil"

    const-string v3, "can not find db threshold"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_3
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static getDualFrequence(C)[F
    .locals 7
    .param p0, "button"    # C

    .prologue
    const v6, 0x44b8a000    # 1477.0f

    const/high16 v5, 0x44a70000    # 1336.0f

    const v4, 0x44972000    # 1209.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 290
    .local v0, "hzPair":[F
    packed-switch p0, :pswitch_data_0

    .line 340
    :pswitch_0
    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v3

    aput v1, v0, v2

    .line 342
    :goto_0
    return-object v0

    .line 292
    :pswitch_1
    const v1, 0x446b4000    # 941.0f

    aput v1, v0, v2

    .line 293
    aput v5, v0, v3

    goto :goto_0

    .line 296
    :pswitch_2
    const v1, 0x442e4000    # 697.0f

    aput v1, v0, v2

    .line 297
    aput v4, v0, v3

    goto :goto_0

    .line 300
    :pswitch_3
    const v1, 0x442e4000    # 697.0f

    aput v1, v0, v2

    .line 301
    aput v5, v0, v3

    goto :goto_0

    .line 304
    :pswitch_4
    const v1, 0x442e4000    # 697.0f

    aput v1, v0, v2

    .line 305
    aput v6, v0, v3

    goto :goto_0

    .line 308
    :pswitch_5
    const v1, 0x44408000    # 770.0f

    aput v1, v0, v2

    .line 309
    aput v4, v0, v3

    goto :goto_0

    .line 312
    :pswitch_6
    const v1, 0x44408000    # 770.0f

    aput v1, v0, v2

    .line 313
    aput v5, v0, v3

    goto :goto_0

    .line 316
    :pswitch_7
    const v1, 0x44408000    # 770.0f

    aput v1, v0, v2

    .line 317
    aput v6, v0, v3

    goto :goto_0

    .line 320
    :pswitch_8
    const/high16 v1, 0x44550000    # 852.0f

    aput v1, v0, v2

    .line 321
    aput v4, v0, v3

    goto :goto_0

    .line 324
    :pswitch_9
    const/high16 v1, 0x44550000    # 852.0f

    aput v1, v0, v2

    .line 325
    aput v5, v0, v3

    goto :goto_0

    .line 328
    :pswitch_a
    const/high16 v1, 0x44550000    # 852.0f

    aput v1, v0, v2

    .line 329
    aput v6, v0, v3

    goto :goto_0

    .line 332
    :pswitch_b
    const v1, 0x446b4000    # 941.0f

    aput v1, v0, v2

    .line 333
    aput v4, v0, v3

    goto :goto_0

    .line 336
    :pswitch_c
    const v1, 0x446b4000    # 941.0f

    aput v1, v0, v2

    .line 337
    aput v6, v0, v3

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getTargetHighFrequency()F
    .locals 1

    .prologue
    .line 55
    const v0, 0x44866000    # 1075.0f

    return v0
.end method

.method public static getTargetLowFrequency()F
    .locals 1

    .prologue
    .line 51
    const/high16 v0, 0x44160000    # 600.0f

    return v0
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    return v0
.end method

.method private initPrecalculatedCosines()V
    .locals 12

    .prologue
    .line 167
    iget v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    if-nez v5, :cond_1

    .line 168
    const-string v5, "DTMFUtil"

    const-string v6, "fail to dispatching funtion initPrecalculatedCosines: you need to set mSampleRate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 173
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v5, v5, v4

    float-to-double v10, v5

    mul-double/2addr v8, v10

    iget v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v0, v6, v8

    .line 175
    .local v0, "dbdata1":D
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    double-to-float v6, v0

    aput v6, v5, v4

    .line 176
    const-wide v6, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v5, v5, v4

    float-to-double v8, v5

    mul-double/2addr v6, v8

    iget v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 178
    .local v2, "dbdata2":D
    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    double-to-float v6, v2

    aput v6, v5, v4

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private isValidate([F)Z
    .locals 8
    .param p1, "detect"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    if-nez p1, :cond_1

    .line 242
    const-string v5, "DTMFUtil"

    const-string v6, "null parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    :goto_0
    return v4

    .line 245
    :cond_1
    const/high16 v2, 0x43860000    # 268.0f

    .line 246
    .local v2, "gap":F
    aget v6, p1, v5

    aget v7, p1, v4

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v2

    if-ltz v6, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "check1":I
    const/4 v1, 0x0

    .line 252
    .local v1, "check2":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v6, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 253
    aget v6, p1, v4

    sget-object v7, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v7, v7, v3

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 254
    move v0, v3

    .line 256
    :cond_2
    aget v6, p1, v5

    sget-object v7, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v7, v7, v3

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    .line 257
    move v1, v3

    .line 252
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 260
    :cond_4
    sub-int v6, v1, v0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    move v4, v5

    .line 261
    goto :goto_0
.end method


# virtual methods
.method public getHealthy()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    return v0
.end method

.method public parseFrequency([BIZ)[F
    .locals 2
    .param p1, "byteBuffer"    # [B
    .param p2, "bitPerSample"    # I
    .param p3, "sign"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const-string v0, "DTMFUtil"

    const-string v1, "parameter error: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfDetectAndValidate([BIZ)[F

    move-result-object v0

    goto :goto_0
.end method

.method public setHealthy(I)V
    .locals 0
    .param p1, "healthy"    # I

    .prologue
    .line 82
    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    .line 83
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 73
    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    .line 74
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    .line 75
    return-void
.end method

.class Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaterMark"
.end annotation


# instance fields
.field private final PIC_WIDTHS:[[I

.field private final WATERMARK_FONT_SIZES:[[I

.field private mCenterX:I

.field private mCenterY:I

.field private mCharMargin:I

.field private mFontIndex:I

.field private mOrientation:I

.field private mPadding:I

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mWaterHeight:I

.field private mWaterText:Ljava/lang/String;

.field private mWaterWidth:I

.field private mX:I

.field private mY:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method private constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;IIIII)V
    .locals 8
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 282
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    .line 251
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->PIC_WIDTHS:[[I

    .line 283
    iput p3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mX:I

    .line 284
    iput p4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mY:I

    .line 285
    iput p7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mOrientation:I

    .line 286
    iput p5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureWidth:I

    .line 287
    iput p6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureHeight:I

    .line 288
    iput-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterText:Ljava/lang/String;

    .line 289
    invoke-direct {p0, p5, p6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getFontIndex(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mFontIndex:I

    .line 290
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterText:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mFontIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getWaterMarkWidth(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    .line 291
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mFontIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v5

    int-to-float v0, v0

    const v1, 0x3f51eb85    # 0.82f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    .line 292
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mFontIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v6

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    .line 293
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    int-to-float v0, v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCharMargin:I

    .line 295
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->calcCenterAxis()V

    .line 296
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->print()V

    .line 299
    :cond_0
    return-void

    .line 237
    :array_0
    .array-data 4
        0x5
        0x4
        0x2
        0x4
        0x3
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x6
        0x2
        0x6
        0x3
        0x7
    .end array-data

    :array_2
    .array-data 4
        0xb
        0x6
        0x5
        0x6
        0x5
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x7
        0x5
        0x7
        0x5
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x32
        0x20
        0xb
        0x1f
        0x14
        0x2f
    .end array-data

    :array_5
    .array-data 4
        0x3a
        0x24
        0x13
        0x26
        0x18
        0x37
    .end array-data

    :array_6
    .array-data 4
        0x41
        0x29
        0x18
        0x2a
        0x1b
        0x3f
    .end array-data

    :array_7
    .array-data 4
        0x50
        0x32
        0x18
        0x32
        0x20
        0x4b
    .end array-data

    :array_8
    .array-data 4
        0x53
        0x34
        0x19
        0x34
        0x21
        0x4e
    .end array-data

    :array_9
    .array-data 4
        0x68
        0x41
        0x21
        0x41
        0x2a
        0x62
    .end array-data

    :array_a
    .array-data 4
        0x80
        0x50
        0x28
        0x50
        0x30
        0x84
    .end array-data

    .line 251
    :array_b
    .array-data 4
        0x0
        0x95
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xef
    .end array-data

    :array_d
    .array-data 4
        0xf0
        0x117
    .end array-data

    :array_e
    .array-data 4
        0x118
        0x190
    .end array-data

    :array_f
    .array-data 4
        0x191
        0x59f
    .end array-data

    :array_10
    .array-data 4
        0x5a0
        0x5e7
    .end array-data

    :array_11
    .array-data 4
        0x5e8
        0x707
    .end array-data

    :array_12
    .array-data 4
        0x708
        0x76b
    .end array-data

    :array_13
    .array-data 4
        0x76c
        0x8fb
    .end array-data

    :array_14
    .array-data 4
        0x8fc
        0xc30
    .end array-data

    :array_15
    .array-data 4
        0xc31
        0xfa0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;IIIIILcom/android/camera/effect/renders/SnapshotEffectRender$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$1;

    .prologue
    .line 236
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;IIIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterX()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterY()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getLeft()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    .prologue
    .line 236
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;

    .prologue
    .line 236
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    return v0
.end method

.method private calcCenterAxis()V
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 336
    :sswitch_0
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mX:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    .line 337
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mY:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCharMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    goto :goto_0

    .line 340
    :sswitch_1
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mX:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCharMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    .line 341
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mY:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    goto :goto_0

    .line 344
    :sswitch_2
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mX:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    .line 345
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mY:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCharMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    goto :goto_0

    .line 348
    :sswitch_3
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mX:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCharMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    .line 349
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mY:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    goto :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getCenterX()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    return v0
.end method

.method private getCenterY()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    return v0
.end method

.method private getFontIndex(II)I
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 302
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 303
    .local v2, "shotL":I
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 304
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->PIC_WIDTHS:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->PIC_WIDTHS:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->PIC_WIDTHS:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gt v2, v3, :cond_1

    .line 306
    move v1, v0

    .line 310
    :cond_0
    return v1

    .line 304
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getLeft()I
    .locals 2

    .prologue
    .line 363
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTop()I
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getWaterMarkWidth(Ljava/lang/String;I)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 314
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x1

    aget v3, v9, v10

    .line 315
    .local v3, "dw":I
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x2

    aget v7, v9, v10

    .line 316
    .local v7, "mw":I
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x3

    aget v8, v9, v10

    .line 317
    .local v8, "sw":I
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->WATERMARK_FONT_SIZES:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x4

    aget v2, v9, v10

    .line 318
    .local v2, "cw":I
    const/4 v6, 0x0

    .line 319
    .local v6, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-char v1, v0, v4

    .line 320
    .local v1, "c":C
    const/16 v9, 0x30

    if-lt v1, v9, :cond_1

    const/16 v9, 0x39

    if-gt v1, v9, :cond_1

    .line 321
    add-int/2addr v6, v3

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    :cond_1
    const/16 v9, 0x3a

    if-ne v1, v9, :cond_2

    .line 323
    add-int/2addr v6, v2

    goto :goto_1

    .line 324
    :cond_2
    const/16 v9, 0x2d

    if-ne v1, v9, :cond_3

    .line 325
    add-int/2addr v6, v7

    goto :goto_1

    .line 326
    :cond_3
    const/16 v9, 0x20

    if-ne v1, v9, :cond_0

    .line 327
    add-int/2addr v6, v8

    goto :goto_1

    .line 330
    .end local v1    # "c":C
    :cond_4
    return v6
.end method

.method private print()V
    .locals 3

    .prologue
    .line 371
    const-string v0, "SnapshotEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaterMark mX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPictureWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPictureHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFontIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mFontIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCenterX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCenterY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mWaterHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPadding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method

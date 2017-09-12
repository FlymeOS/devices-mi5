.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$2;,
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field public mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 1519
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J[BIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 5
    .param p1, "nativeBitmap"    # J
    .param p3, "buffer"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "density"    # I
    .param p7, "isMutable"    # Z
    .param p8, "requestPremultiplied"    # Z
    .param p9, "ninePatchChunk"    # [B
    .param p10, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    iput v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 120
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "internal error: native bitmap is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    iput p4, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 125
    iput p5, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 126
    iput-boolean p7, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 127
    iput-boolean p8, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 128
    iput-object p3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 130
    iput-object p9, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 131
    iput-object p10, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 132
    if-ltz p6, :cond_1

    .line 133
    iput p6, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 136
    :cond_1
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 137
    new-instance v1, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(J)V

    iput-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 138
    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 139
    .local v0, "nativeAllocationByteCount":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 142
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/util/DumpBitmapInfoUtils;->putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 138
    .end local v0    # "nativeAllocationByteCount":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 36
    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->nativeDestructor(J)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1410
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1411
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    .prologue
    .line 1433
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1434
    if-gez p3, :cond_0

    .line 1435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1437
    :cond_0
    if-gez p4, :cond_1

    .line 1438
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1440
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1441
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1444
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1445
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 1449
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1451
    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1452
    .local v0, "lastScanline":I
    array-length v1, p7

    .line 1453
    .local v1, "length":I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    .line 1456
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1458
    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 389
    if-gtz p0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    if-gtz p1, :cond_1

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 374
    if-gez p0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-gez p1, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 787
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 645
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 665
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .prologue
    .line 695
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 696
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 697
    add-int v13, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v13, v14, :cond_0

    .line 698
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 700
    :cond_0
    add-int v13, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v13, v14, :cond_1

    .line 701
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 705
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 774
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object p0

    .line 710
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v9, p3

    .line 711
    .local v9, "neww":I
    move/from16 v8, p4

    .line 712
    .local v8, "newh":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 716
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    add-int v13, p1, p3

    add-int v14, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 717
    .local v11, "srcR":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 719
    .local v6, "dstR":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 720
    .local v7, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 722
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    .line 723
    sget-object v13, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 734
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 739
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 740
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 741
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 766
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .local v10, "paint":Landroid/graphics/Paint;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 768
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 770
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 771
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 772
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v2

    .line 774
    goto :goto_0

    .line 725
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :pswitch_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 726
    goto :goto_1

    .line 728
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 729
    goto :goto_1

    .line 743
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v12, 0x1

    .line 745
    .local v12, "transformed":Z
    :goto_3
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 746
    .local v5, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 748
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 749
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 751
    if-eqz v12, :cond_8

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    const/4 v13, 0x1

    :goto_4
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 754
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    iget v14, v5, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 755
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 757
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 758
    .restart local v10    # "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 759
    if-eqz v12, :cond_6

    .line 760
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_2

    .line 743
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "deviceR":Landroid/graphics/RectF;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "transformed":Z
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 751
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "deviceR":Landroid/graphics/RectF;
    .restart local v12    # "transformed":Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_4

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 803
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z

    .prologue
    .line 840
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 841
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 844
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    .line 845
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    .line 847
    :cond_2
    invoke-virtual {v7, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 848
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_3

    if-nez p4, :cond_3

    .line 849
    iget-object v0, v7, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    const/high16 v2, -0x1000000

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 854
    :cond_3
    return-object v7
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 903
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 904
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p4, :cond_0

    .line 905
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 907
    :cond_0
    add-int/lit8 v1, p5, -0x1

    mul-int/2addr v1, p3

    add-int v9, p2, v1

    .line 908
    .local v9, "lastScanline":I
    array-length v10, p1

    .line 909
    .local v10, "length":I
    if-ltz p2, :cond_1

    add-int v1, p2, p4

    if-gt v1, v10, :cond_1

    if-ltz v9, :cond_1

    add-int v1, v9, p4

    if-le v1, v10, :cond_2

    .line 911
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 913
    :cond_2
    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    .line 914
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :cond_4
    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 918
    .local v8, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    .line 919
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    .line 921
    :cond_5
    return-object v8
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 962
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 877
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 940
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 612
    const-class v2, Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 614
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 615
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 616
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    if-nez v5, :cond_0

    .line 619
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "m":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 622
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 623
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 624
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 625
    .local v8, "sx":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 626
    .local v9, "sy":F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 627
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 629
    .local v7, "b":Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 631
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 632
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 634
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 636
    return-object v7

    .line 616
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 634
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 105
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 106
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 109
    :goto_0
    return v0

    .line 108
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 109
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method private static native nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(J)I
.end method

.method private static native nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetPixels(J[IIIIIII)V
.end method

.method private static native nativeHasAlpha(J)Z
.end method

.method private static native nativeHasMipMap(J)Z
.end method

.method private static native nativeIsPremultiplied(J)Z
.end method

.method private static native nativeReconfigure(JIIIIZ)V
.end method

.method private static native nativeRecycle(J)Z
.end method

.method private static native nativeRefPixelRef(J)J
.end method

.method private static native nativeRowBytes(J)I
.end method

.method private static native nativeSameAs(JJ)Z
.end method

.method private static native nativeSetHasAlpha(JZZ)V
.end method

.method private static native nativeSetHasMipMap(JZ)V
.end method

.method private static native nativeSetPixel(JIII)V
.end method

.method private static native nativeSetPixels(J[IIIIIII)V
.end method

.method private static native nativeSetPremultiplied(JZ)V
.end method

.method private static native nativeWriteToParcel(JZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .prologue
    .line 1186
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 1191
    .end local p0    # "size":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "size":I
    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .param p0, "density"    # I

    .prologue
    .line 100
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 101
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v8, 0x2000

    .line 1030
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1032
    if-nez p3, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1035
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 1036
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_2
    const-string v0, "Bitmap.compress"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1039
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    iget v2, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v3, 0x1000

    new-array v5, v3, [B

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v6

    .line 1041
    .local v6, "result":Z
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    return v6
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    .prologue
    .line 571
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v2

    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v2, v3, v1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 573
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 574
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 575
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 577
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "src"    # Ljava/nio/Buffer;

    .prologue
    .line 529
    const-string v7, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 533
    .local v4, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 534
    const/4 v6, 0x0

    .line 543
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v4

    shl-long v2, v8, v6

    .line 544
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v0, v7

    .line 546
    .local v0, "bitmapBytes":J
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    .line 547
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 535
    .end local v0    # "bitmapBytes":J
    .end local v2    # "bufferBytes":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 536
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_0

    .line 537
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 538
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_0

    .line 540
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 550
    .restart local v0    # "bitmapBytes":J
    .restart local v2    # "bufferBytes":J
    .restart local v6    # "shift":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v7}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v8

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    .line 553
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 554
    .local v5, "position":I
    int-to-long v8, v5

    shr-long v10, v0, v6

    add-long/2addr v8, v10

    long-to-int v5, v8

    .line 555
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 556
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 491
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 493
    .local v2, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 494
    const/4 v6, 0x0

    .line 503
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v2

    shl-long v0, v8, v6

    .line 504
    .local v0, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v4, v7

    .line 506
    .local v4, "pixelSize":J
    cmp-long v7, v0, v4

    if-gez v7, :cond_3

    .line 507
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 495
    .end local v0    # "bufferSize":J
    .end local v4    # "pixelSize":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 496
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_0

    .line 497
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 498
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_0

    .line 500
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 510
    .restart local v0    # "bufferSize":J
    .restart local v4    # "pixelSize":J
    .restart local v6    # "shift":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v7}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v8

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    .line 513
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 514
    .local v3, "position":I
    int-to-long v8, v3

    shr-long v10, v4, v6

    add-long/2addr v8, v10

    long-to-int v3, v8

    .line 515
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 516
    return-void
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 587
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 590
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 591
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 593
    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 1344
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 1349
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1567
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    .prologue
    .line 1597
    const-string v1, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    .line 1599
    .local v2, "nativePaint":J
    :goto_0
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1600
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1601
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1598
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "nativePaint":J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1603
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "nativePaint":J
    :cond_1
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1604
    return-object v0
.end method

.method public final getAllocationByteCount()I
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 1245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public final getByteCount()I
    .locals 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 1253
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1254
    const-string v0, "Bitmap"

    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "Bitmap"

    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 2

    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "Bitmap"

    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 1122
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1123
    const-string v0, "Bitmap"

    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 980
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_0

    .line 981
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getPixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1363
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1364
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1365
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1393
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1394
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1397
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1398
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 2

    .prologue
    .line 1207
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1208
    const-string v0, "Bitmap"

    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1149
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "Bitmap"

    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    .prologue
    .line 1268
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1269
    const-string v0, "Bitmap"

    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    .prologue
    .line 1307
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1308
    const-string v0, "Bitmap"

    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .prologue
    .line 1080
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1081
    const-string v0, "Bitmap"

    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .prologue
    .line 1637
    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 232
    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 233
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_3

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "native-backed bitmaps may not be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    iget v4, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v5, v2

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIIZ)V

    .line 245
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 246
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 247
    return-void
.end method

.method public recycle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 320
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iput-object v4, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 327
    iput-object v4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 329
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 331
    :cond_1
    return-void
.end method

.method public final refSkPixelRef()J
    .locals 2

    .prologue
    .line 1646
    const-string v0, "Can\'t refSkPixelRef on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1647
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRefPixelRef(J)J

    move-result-wide v0

    return-wide v0
.end method

.method reinit(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "requestPremultiplied"    # Z

    .prologue
    .line 151
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 152
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 153
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 154
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1613
    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1614
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 1619
    :goto_0
    return v0

    .line 1615
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1616
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    iget-object v2, p1, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 295
    return-void
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 197
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 198
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 1285
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    .line 1287
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2
    .param p1, "hasMipMap"    # Z

    .prologue
    .line 1334
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    .line 1336
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 279
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .param p1, "chunk"    # [B

    .prologue
    .line 305
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 306
    return-void
.end method

.method public setPixel(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .prologue
    .line 1474
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1478
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1479
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    .line 1480
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1507
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1511
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1517
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1514
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1515
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    goto :goto_0
.end method

.method public final setPremultiplied(Z)V
    .locals 2
    .param p1, "premultiplied"    # Z

    .prologue
    .line 1107
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1108
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 1109
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    .line 1110
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 263
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1552
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1553
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    # getter for: Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_0
    return-void
.end method

.class Lcom/android/gallery3d/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;,
        Lcom/android/gallery3d/exif/ExifParser$IfdEvent;,
        Lcom/android/gallery3d/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 166
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 168
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    .line 169
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 171
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 173
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 175
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 177
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/gallery3d/exif/ExifInterface;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Lcom/android/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 150
    iput v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 158
    iput-boolean v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 160
    iput v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 180
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Null argument inputStream to ExifParser"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/exif/ExifParser;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 212
    new-instance v2, Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    .line 213
    iput p2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    .line 214
    iget-boolean v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v2, :cond_2

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->parseTiffHeader()V

    .line 219
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 220
    .local v0, "offset":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 221
    new-instance v2, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfd0Position:I

    .line 224
    iput v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    .line 225
    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_4
    invoke-direct {p0, v4, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 227
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 228
    long-to-int v2, v0

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    .line 229
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    goto :goto_0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 640
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 641
    const/4 v1, 0x0

    .line 643
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 10
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 588
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v2

    .line 592
    .local v2, "tid":S
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    .line 593
    .local v1, "ifd":I
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    if-ne v2, v3, :cond_3

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 594
    invoke-direct {p0, v8}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v8, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 598
    :cond_3
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v2, v3, :cond_4

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 599
    invoke-direct {p0, v9}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    invoke-virtual {p1, v6}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v9, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 602
    :cond_4
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v2, v3, :cond_5

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 604
    invoke-direct {p0, v7}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    invoke-virtual {p1, v6}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v7, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 607
    :cond_5
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v2, v3, :cond_6

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 609
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    invoke-virtual {p1, v6}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 612
    :cond_6
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v2, v3, :cond_7

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 614
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    goto/16 :goto_0

    .line 617
    :cond_7
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v2, v3, :cond_a

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 618
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v3

    if-ne v3, v7, :cond_8

    .line 622
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 620
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 624
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 628
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v6}, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 631
    :cond_a
    sget-short v3, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v2, v3, :cond_0

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 185
    :pswitch_0
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 187
    :pswitch_1
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 189
    :pswitch_2
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 191
    :pswitch_3
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 193
    :pswitch_4
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 393
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 395
    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 399
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 402
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Lcom/android/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/android/gallery3d/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 740
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 748
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    .line 749
    new-instance v1, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 745
    :cond_1
    new-instance v1, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :cond_2
    return-void
.end method

.method private readTag()Lcom/android/gallery3d/exif/ExifTag;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v3

    .line 536
    .local v3, "tagId":S
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 537
    .local v4, "dataFormat":S
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 538
    .local v12, "numOfComp":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v12, v6

    if-lez v5, :cond_0

    .line 539
    new-instance v5, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v6, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v5, v6}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 543
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v5

    if-nez v5, :cond_1

    .line 544
    const-string v5, "ExifParser"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Tag %04x: Invalid data type %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v17

    aput-object v17, v11, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v17

    aput-object v17, v11, v16

    invoke-static {v6, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    const-wide/16 v6, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 546
    const/4 v2, 0x0

    .line 579
    :goto_0
    return-object v2

    .line 549
    :cond_1
    new-instance v2, Lcom/android/gallery3d/exif/ExifTag;

    long-to-int v5, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    long-to-int v7, v12

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 551
    .local v2, "tag":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v9

    .line 552
    .local v9, "dataSize":I
    const/4 v5, 0x4

    if-le v9, v5, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v14

    .line 554
    .local v14, "offset":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v14, v6

    if-lez v5, :cond_3

    .line 555
    new-instance v5, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v6, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v5, v6}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 549
    .end local v2    # "tag":Lcom/android/gallery3d/exif/ExifTag;
    .end local v9    # "dataSize":I
    .end local v14    # "offset":J
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 560
    .restart local v2    # "tag":Lcom/android/gallery3d/exif/ExifTag;
    .restart local v9    # "dataSize":I
    .restart local v14    # "offset":J
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mIfd0Position:I

    int-to-long v6, v5

    cmp-long v5, v14, v6

    if-gez v5, :cond_4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 561
    long-to-int v5, v12

    new-array v8, v5, [B

    .line 562
    .local v8, "buf":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v6, v14

    add-int/lit8 v6, v6, -0x8

    const/4 v7, 0x0

    long-to-int v11, v12

    invoke-static {v5, v6, v8, v7, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 564
    invoke-virtual {v2, v8}, Lcom/android/gallery3d/exif/ExifTag;->setValue([B)Z

    goto :goto_0

    .line 566
    .end local v8    # "buf":[B
    :cond_4
    long-to-int v5, v14

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    goto :goto_0

    .line 569
    .end local v14    # "offset":J
    :cond_5
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifTag;->hasDefinedCount()Z

    move-result v10

    .line 571
    .local v10, "defCount":Z
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 574
    invoke-virtual {v2, v10}, Lcom/android/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    rsub-int/lit8 v6, v9, 0x4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    goto :goto_0
.end method

.method private registerCompressedImage(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .param p1, "stripIndex"    # I
    .param p2, "offset"    # J

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 755
    new-instance v0, Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 756
    .local v0, "dataStream":Lcom/android/gallery3d/exif/CountedDataInputStream;
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_0

    .line 757
    new-instance v5, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v6, "Invalid JPEG format"

    invoke-direct {v5, v6}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 760
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 762
    .local v4, "marker":S
    :goto_0
    const/16 v6, -0x27

    if-eq v4, v6, :cond_1

    invoke-static {v4}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v6

    if-nez v6, :cond_1

    .line 763
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 766
    .local v3, "length":I
    const/16 v6, -0x1f

    if-ne v4, v6, :cond_2

    .line 767
    const/4 v1, 0x0

    .line 768
    .local v1, "header":I
    const/4 v2, 0x0

    .line 769
    .local v2, "headerTail":S
    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    .line 770
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v1

    .line 771
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 772
    add-int/lit8 v3, v3, -0x6

    .line 773
    const v6, 0x45786966

    if-ne v1, v6, :cond_2

    if-nez v2, :cond_2

    .line 774
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    .line 775
    iput v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mApp1End:I

    .line 776
    iget v5, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    iget v6, p0, Lcom/android/gallery3d/exif/ExifParser;->mApp1End:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 777
    const/4 v5, 0x1

    .line 787
    .end local v1    # "header":I
    .end local v2    # "headerTail":S
    .end local v3    # "length":I
    :cond_1
    :goto_1
    return v5

    .line 781
    .restart local v3    # "length":I
    :cond_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    int-to-long v6, v6

    add-int/lit8 v8, v3, -0x2

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 782
    :cond_3
    const-string v6, "ExifParser"

    const-string v7, "Invalid JPEG format."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 785
    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 786
    goto :goto_0
.end method

.method private skipTo(I)V
    .locals 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skipTo(J)V

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    .line 494
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    .line 483
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getTag()Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected next()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 273
    iget-boolean v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v9, :cond_0

    .line 274
    const/4 v9, 0x5

    .line 354
    :goto_0
    return v9

    .line 276
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v6

    .line 277
    .local v6, "offset":I
    iget v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v10, v10, 0xc

    add-int v1, v9, v10

    .line 278
    .local v1, "endOfTags":I
    if-ge v6, v1, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->readTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v9

    iput-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 280
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v9, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v9

    goto :goto_0

    .line 283
    :cond_1
    iget-boolean v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v9, :cond_2

    .line 284
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v9}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 286
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 287
    :cond_3
    if-ne v6, v1, :cond_5

    .line 289
    iget v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v9, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 291
    .local v4, "ifdOffset":J
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 292
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 293
    const/4 v9, 0x1

    invoke-direct {p0, v9, v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 313
    .end local v4    # "ifdOffset":J
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-eqz v9, :cond_e

    .line 314
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 315
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/gallery3d/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    instance-of v9, v3, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v9, :cond_b

    move-object v9, v3

    .line 324
    check-cast v9, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    iget v9, v9, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    .line 325
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v9

    iput v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 326
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 328
    iget v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v9, v9, 0xc

    iget v10, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/gallery3d/exif/ExifParser;->mApp1End:I

    if-le v9, v10, :cond_9

    .line 329
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of IFD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 297
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x4

    .line 299
    .local v7, "offsetSize":I
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 300
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v10}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v10

    sub-int v7, v9, v10

    .line 303
    :cond_7
    const/4 v9, 0x4

    if-ge v7, v9, :cond_8

    .line 304
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 307
    .restart local v4    # "ifdOffset":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 308
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    .end local v4    # "ifdOffset":J
    .end local v7    # "offsetSize":I
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v3    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to skip to data at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", the file may be broken."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 334
    check-cast v3, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iget-boolean v9, v3, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v9, :cond_a

    .line 335
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 337
    :cond_a
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    .line 339
    .restart local v3    # "event":Ljava/lang/Object;
    :cond_b
    instance-of v9, v3, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v9, :cond_c

    .line 340
    check-cast v3, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iput-object v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    .line 341
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v9, v9, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .restart local v3    # "event":Ljava/lang/Object;
    :cond_c
    move-object v8, v3

    .line 343
    check-cast v8, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    .line 344
    .local v8, "tagEvent":Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;
    iget-object v9, v8, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    iput-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 345
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    .line 346
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 347
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v9}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 349
    :cond_d
    iget-boolean v9, v8, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v9, :cond_5

    .line 350
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 354
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    .end local v8    # "tagEvent":Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;
    :cond_e
    const/4 v9, 0x5

    goto/16 :goto_0
.end method

.method protected read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 11
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    .line 649
    .local v6, "type":S
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x7

    if-eq v6, v8, :cond_0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 651
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v5

    .line 652
    .local v5, "size":I
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 653
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    add-int/2addr v9, v5

    if-ge v8, v9, :cond_1

    .line 655
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 656
    .local v2, "event":Ljava/lang/Object;
    instance-of v8, v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v8, :cond_2

    .line 658
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 660
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid thumbnail offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "event":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 735
    :goto_1
    :pswitch_0
    return-void

    .line 663
    .restart local v2    # "event":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_2
    instance-of v8, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v8, :cond_4

    .line 664
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ifd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget v10, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v5, v8, v9

    .line 673
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid size of tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " setting count to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p1, v5}, Lcom/android/gallery3d/exif/ExifTag;->forceSetComponentCount(I)V

    goto :goto_0

    .line 666
    .restart local v2    # "event":Ljava/lang/Object;
    :cond_4
    instance-of v8, v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    if-eqz v8, :cond_3

    .line 667
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tag value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget-object v10, v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v10}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 683
    .end local v5    # "size":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v0, v8, [B

    .line 684
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    .line 685
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([B)Z

    goto/16 :goto_1

    .line 689
    .end local v0    # "buf":[B
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 692
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [J

    .line 693
    .local v7, "value":[J
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v7

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 694
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    aput-wide v8, v7, v3

    .line 693
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 696
    :cond_5
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)Z

    goto/16 :goto_1

    .line 700
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[J
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/android/gallery3d/exif/Rational;

    .line 701
    .local v7, "value":[Lcom/android/gallery3d/exif/Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 702
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedRational()Lcom/android/gallery3d/exif/Rational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 701
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 704
    :cond_6
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/exif/ExifTag;->setValue([Lcom/android/gallery3d/exif/Rational;)Z

    goto/16 :goto_1

    .line 708
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[Lcom/android/gallery3d/exif/Rational;
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 709
    .local v7, "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_5
    if-ge v3, v4, :cond_7

    .line 710
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedShort()I

    move-result v8

    aput v8, v7, v3

    .line 709
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 712
    :cond_7
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 716
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 717
    .restart local v7    # "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_6
    if-ge v3, v4, :cond_8

    .line 718
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v8

    aput v8, v7, v3

    .line 717
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 720
    :cond_8
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 724
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/android/gallery3d/exif/Rational;

    .line 725
    .local v7, "value":[Lcom/android/gallery3d/exif/Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_7
    if-ge v3, v4, :cond_9

    .line 726
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readRational()Lcom/android/gallery3d/exif/Rational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 725
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 728
    :cond_9
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/exif/ExifTag;->setValue([Lcom/android/gallery3d/exif/Rational;)Z

    goto/16 :goto_1

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/android/gallery3d/exif/Rational;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v1

    .line 872
    .local v1, "nomi":I
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    .line 873
    .local v0, "denomi":I
    new-instance v2, Lcom/android/gallery3d/exif/Rational;

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v0, Lcom/android/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    if-lez p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 830
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/android/gallery3d/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 856
    .local v2, "nomi":J
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 857
    .local v0, "denomi":J
    new-instance v4, Lcom/android/gallery3d/exif/Rational;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;

    .prologue
    .line 514
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 365
    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int v0, v4, v5

    .line 366
    .local v0, "endOfTags":I
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 367
    .local v1, "offset":I
    if-le v1, v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v4, :cond_3

    .line 371
    :cond_2
    :goto_1
    if-ge v1, v0, :cond_4

    .line 372
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->readTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 373
    add-int/lit8 v1, v1, 0xc

    .line 374
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    if-eqz v4, :cond_2

    .line 377
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 380
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->skipTo(I)V

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 384
    .local v2, "ifdOffset":J
    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 387
    invoke-direct {p0, v6, v2, v3}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method

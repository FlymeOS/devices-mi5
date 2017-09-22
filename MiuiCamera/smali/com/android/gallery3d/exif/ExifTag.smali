.class public Lcom/android/gallery3d/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 71
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 79
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 80
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 81
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 82
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 83
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 84
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 85
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 86
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-short p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    .line 131
    iput-short p2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    .line 132
    iput p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 133
    iput-boolean p5, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 134
    iput p4, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 890
    const/4 v0, 0x1

    .line 892
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Lcom/android/gallery3d/exif/Rational;)Z
    .locals 10
    .param p1, "value"    # [Lcom/android/gallery3d/exif/Rational;

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    .line 957
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/gallery3d/exif/Rational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 958
    .local v3, "v":Lcom/android/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 961
    :cond_0
    const/4 v4, 0x1

    .line 964
    .end local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :goto_1
    return v4

    .line 957
    .restart local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    .end local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 937
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 938
    .local v3, "v":I
    if-gez v3, :cond_0

    .line 939
    const/4 v4, 0x1

    .line 942
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 937
    .restart local v3    # "v":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    .end local v3    # "v":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8
    .param p1, "value"    # [J

    .prologue
    .line 928
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v4, v0, v1

    .line 929
    .local v4, "v":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 930
    :cond_0
    const/4 v3, 0x1

    .line 933
    .end local v4    # "v":J
    :goto_1
    return v3

    .line 928
    .restart local v4    # "v":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v4    # "v":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/gallery3d/exif/Rational;)Z
    .locals 10
    .param p1, "value"    # [Lcom/android/gallery3d/exif/Rational;

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    .line 946
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/gallery3d/exif/Rational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 947
    .local v3, "v":Lcom/android/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 950
    :cond_0
    const/4 v4, 0x1

    .line 953
    .end local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :goto_1
    return v4

    .line 946
    .restart local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 919
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 920
    .local v3, "v":I
    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 921
    :cond_0
    const/4 v4, 0x1

    .line 924
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 919
    .restart local v3    # "v":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    .end local v3    # "v":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 896
    packed-switch p0, :pswitch_data_0

    .line 914
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 898
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 900
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 902
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 904
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 906
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 908
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 910
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 912
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 151
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .prologue
    const/4 v0, 0x1

    .line 112
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .prologue
    const/4 v0, 0x1

    .line 121
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 969
    if-nez p1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return v1

    .line 972
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/exif/ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 973
    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    .line 974
    .local v0, "tag":Lcom/android/gallery3d/exif/ExifTag;
    iget-short v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    .line 979
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 980
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 982
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 983
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 987
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_3

    .line 988
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/android/gallery3d/exif/Rational;

    check-cast v1, [Lcom/android/gallery3d/exif/Rational;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/android/gallery3d/exif/Rational;

    check-cast v2, [Lcom/android/gallery3d/exif/Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 992
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 993
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 998
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 1001
    :cond_5
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 754
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 755
    const-string v1, ""

    .line 780
    :goto_0
    return-object v1

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 757
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 758
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Lcom/android/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 763
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    .line 764
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 766
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 768
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 769
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    .line 770
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 771
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 772
    const-string v1, ""

    goto :goto_0

    .line 774
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 777
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 780
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 216
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 843
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([BII)V

    .line 844
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 857
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .end local p3    # "length":I
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 191
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/android/gallery3d/exif/Rational;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 832
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/gallery3d/exif/Rational;

    check-cast v0, [Lcom/android/gallery3d/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getStringByte()[B
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 175
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 798
    :goto_0
    return-wide v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 800
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 882
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    .line 169
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 877
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    .line 878
    return-void
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v7, :cond_1

    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v6, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v3

    .line 333
    :cond_1
    sget-object v5, Lcom/android/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 334
    .local v0, "buf":[B
    move-object v2, v0

    .line 335
    .local v2, "finalBuf":[B
    array-length v5, v0

    if-lez v5, :cond_5

    .line 336
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v5, v6, :cond_4

    :cond_2
    move-object v2, v0

    .line 340
    :goto_1
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_3

    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v6, :cond_3

    .line 341
    iget v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 346
    :cond_3
    :goto_2
    array-length v1, v2

    .line 347
    .local v1, "count":I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 350
    iput v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 351
    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    move v3, v4

    .line 352
    goto :goto_0

    .line 336
    .end local v1    # "count":I
    :cond_4
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1

    .line 343
    :cond_5
    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v5, v4, :cond_3

    .line 344
    new-array v2, v4, [B

    .end local v2    # "finalBuf":[B
    aput-byte v3, v2, v3

    .restart local v2    # "finalBuf":[B
    goto :goto_2
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 434
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, p3}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 424
    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 425
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iput p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    move v0, v1

    .line 427
    goto :goto_0
.end method

.method public setValue([I)Z
    .locals 7
    .param p1, "value"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 238
    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v2

    .line 241
    :cond_1
    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    .line 245
    :cond_2
    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    :cond_3
    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    .line 252
    .local v0, "data":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 253
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_5
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 256
    array-length v2, p1

    iput v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 257
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .prologue
    const/4 v0, 0x0

    .line 288
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 295
    array-length v0, p1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Lcom/android/gallery3d/exif/Rational;)Z
    .locals 4
    .param p1, "value"    # [Lcom/android/gallery3d/exif/Rational;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 370
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    .line 376
    :cond_2
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/gallery3d/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    :cond_3
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForRational([Lcom/android/gallery3d/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    :cond_4
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 383
    array-length v0, p1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 384
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "tag id: %04X\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

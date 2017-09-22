.class public Lmiui/date/Calendar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/date/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final AD:I = 0x1

.field public static final AFTERNOON:I = 0x4

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x11

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final AUTUMN_BEGINS:I = 0xf

.field public static final AUTUMN_EQUINOX:I = 0x12

.field public static final BC:I = 0x0

.field public static final CHICKEN:I = 0x9

.field public static final CHINESE_ERA_DAY:I = 0xb

.field public static final CHINESE_ERA_HOUR:I = 0x13

.field public static final CHINESE_ERA_MONTH:I = 0x7

.field public static final CHINESE_ERA_YEAR:I = 0x4

.field public static final CHINESE_MONTH:I = 0x6

.field public static final CHINESE_MONTH_IS_LEAP:I = 0x8

.field public static final CHINESE_YEAR:I = 0x2

.field public static final CHINESE_YEAR_SYMBOL_ANIMAL:I = 0x3

.field public static final CLEAR_AND_BRIGHT:I = 0x7

.field public static final COLD_DEWS:I = 0x13

.field public static final COW:I = 0x1

.field public static final DAY_OF_CHINESE_MONTH:I = 0xa

.field public static final DAY_OF_CHINESE_YEAR:I = 0xd

.field public static final DAY_OF_MONTH:I = 0x9

.field public static final DAY_OF_WEEK:I = 0xe

.field public static final DAY_OF_YEAR:I = 0xc

.field public static final DECEMBER:I = 0xb

.field public static final DETAIL_AM_PM:I = 0x10

.field public static final DOG:I = 0xa

.field public static final DRAGON:I = 0x4

.field public static final DST_OFFSET:I = 0x18

.field public static final EARLY_MORNING:I = 0x1

.field public static final ERA:I = 0x0

.field public static final EVENING:I = 0x5

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x19

.field public static final FRIDAY:I = 0x6

.field public static final GRAIN_BUDS:I = 0xa

.field public static final GRAIN_IN_EAR:I = 0xb

.field public static final GRAIN_RAIN:I = 0x8

.field public static final GREAT_COLD:I = 0x2

.field public static final GREAT_HEAT:I = 0xe

.field public static final HEAVY_SNOW:I = 0x17

.field public static final HOAR_FROST_FALLS:I = 0x14

.field public static final HORSE:I = 0x6

.field public static final HOUR:I = 0x12

.field public static final INSECTS_AWAKEN:I = 0x5

.field public static final IS_CHINESE_LEAP_MONTH:I = 0x1

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LIGHT_SNOW:I = 0x16

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MIDNIGHT:I = 0x0

.field public static final MILLISECOND:I = 0x16

.field public static final MILLISECOND_OF_DAY:I = 0x5265c00

.field public static final MILLISECOND_OF_HOUR:I = 0x36ee80

.field public static final MILLISECOND_OF_MINUTE:I = 0xea60

.field public static final MILLISECOND_OF_SECOND:I = 0x3e8

.field public static final MINUTE:I = 0x14

.field public static final MONDAY:I = 0x2

.field public static final MONKEY:I = 0x8

.field public static final MONTH:I = 0x5

.field public static final MORNING:I = 0x2

.field public static final MOUSE:I = 0x0

.field public static final NIGHT:I = 0x6

.field public static final NOON:I = 0x3

.field public static final NOT_CHINESE_LEAP_MONTH:I = 0x0

.field public static final NOVEMBER:I = 0xa

.field public static final NO_SOLAR_TERM:I = 0x0

.field public static final OCTOBER:I = 0x9

.field public static final PIG:I = 0xb

.field public static final PM:I = 0x1

.field public static final RABBIT:I = 0x3

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0x15

.field public static final SEPTEMBER:I = 0x8

.field public static final SHEEP:I = 0x7

.field public static final SLIGHT_COLD:I = 0x1

.field public static final SLIGHT_HEAT:I = 0xd

.field public static final SNAKE:I = 0x5

.field public static final SOLAR_TERM:I = 0xf

.field public static final SPRING_BEGINS:I = 0x3

.field public static final STOPPING_THE_HEAT:I = 0x10

.field public static final SUMMER_BEGINS:I = 0x9

.field public static final SUMMER_SOLSTICE:I = 0xc

.field public static final SUNDAY:I = 0x1

.field public static final THE_RAINS:I = 0x4

.field public static final THURSDAY:I = 0x5

.field public static final TIGER:I = 0x2

.field public static final TUESDAY:I = 0x3

.field public static final VERNAL_EQUINOX:I = 0x6

.field public static final WEDNESDAY:I = 0x4

.field public static final WHITE_DEWS:I = 0x11

.field public static final WINTER_BEGINS:I = 0x15

.field public static final WINTER_SOLSTICE:I = 0x18

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0x17

.field private static final serialVersionUID:J = 0x1L

.field private static final wR:I = 0x76c

.field private static final wS:I = 0x834

.field private static final wT:J = -0x201b77f5c00L

.field private static final wU:J = 0x3c314a71400L

.field private static final wV:I = -0x63c1

.field private static final wW:[B

.field private static final wX:[I

.field private static final wY:[Ljava/lang/String;

.field private static final wZ:[I

.field private static final xa:[I

.field private static final xb:[I

.field private static final xc:[I

.field private static final xd:[B

.field private static final xe:[B

.field private static final xf:J = -0xb1d069b5400L


# instance fields
.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;

.field private transient xg:J

.field private transient xh:I

.field private transient xi:I

.field private transient xj:I

.field private transient xk:I

.field private transient xl:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x18

    const/16 v4, 0xd

    const/16 v3, 0xc

    .line 97
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/date/Calendar;->wW:[B

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/date/Calendar;->wX:[I

    .line 325
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CHINESE_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CHINESE_YEAR_SYMBOL_ANIMAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHINESE_ERA_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CHINESE_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CHINESE_ERA_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CHINESE_MONTH_IS_LEAP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DAY_OF_CHINESE_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CHINESE_ERA_DAY"

    aput-object v2, v0, v1

    const-string v1, "DAY_OF_YEAR"

    aput-object v1, v0, v3

    const-string v1, "DAY_OF_CHINESE_YEAR"

    aput-object v1, v0, v4

    const/16 v1, 0xe

    const-string v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SOLAR_TERM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DETAIL_AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CHINESE_ERA_HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const-string v1, "DST_OFFSET"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/date/Calendar;->wY:[Ljava/lang/String;

    .line 680
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiui/date/Calendar;->wZ:[I

    .line 689
    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmiui/date/Calendar;->xa:[I

    .line 713
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmiui/date/Calendar;->xb:[I

    .line 737
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lmiui/date/Calendar;->xc:[I

    .line 741
    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->xd:[B

    .line 747
    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->xe:[B

    return-void

    .line 97
    nop

    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 101
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 680
    :array_2
    .array-data 4
        0x3
        -0x1
        -0x1
        0xc
        0xe
        0x1a
        0x0
        0x12
        0x13
        -0x1
        0x12
        0x5
        0x5
        0x7
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        0x1a
        -0x1
        0x4
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        -0x1
        0xe
        0x9
        0x7
        -0x1
        -0x1
        0x12
        -0x1
        -0x1
        0x12
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x1a
        -0x1
        0x1
        0x19
    .end array-data

    .line 689
    :array_3
    .array-data 4
        0x0
        0x180
        0x2e2
        0x445
        0x5c4
        0x726
        0x889
        0xa09
        0xb6b
        0xcce
        0xe4e
        0xfb0
        0x1130
        0x1292
        0x13f4
        0x1574
        0x16d6
        0x1839
        0x19b9
        0x1b1c
        0x1c9c
        0x1dfe
        0x1f60
        0x20e0
        0x2242
        0x23a4
        0x2525
        0x2687
        0x27ea
        0x296a
        0x2acc
        0x2c4b
        0x2dad
        0x2f10
        0x3090
        0x31f3
        0x3355
        0x34d5
        0x3637
        0x37b7
        0x3919
        0x3a7b
        0x3bfb
        0x3d5e
        0x3ec0
        0x4041
        0x41a3
        0x4305
        0x4485
        0x45e7
        0x4767
        0x48c9
        0x4a2c
        0x4bac
        0x4d0e
        0x4e71
        0x4ff1
        0x5153
        0x52d2
        0x5435
        0x5597
        0x5717
        0x587a
        0x59dc
        0x5b5c
        0x5cbf
        0x5e20
        0x5fa0
        0x6103
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
        0xc7ca
        0xc92d
        0xca90
        0xcc10
        0xcd72
        0xcef2
        0xd054
        0xd1b6
        0xd336
        0xd498
        0xd5fb
        0xd77b
        0xd8de
        0xda5e
        0xdbc0
        0xdd22
        0xdea1
        0xe004
        0xe166
        0xe2e6
        0xe449
        0xe5ab
        0xe72b
        0xe88d
        0xea0d
        0xeb6f
        0xecd2
        0xee52
        0xefb4
        0xf117
        0xf297
        0xf3f9
        0xf579
        0xf6db
        0xf83d
        0xf9bd
        0xfb20
        0xfc82
        0xfe02
        0xff65
        0x100c7
        0x10247
        0x103a9
        0x10529
        0x1068b
        0x107ee
        0x1096e
        0x10ad0
        0x10c33
        0x10db2
        0x10f14
        0x11094
        0x111f6
        0x11359
        0x114d9
        0x1163c
        0x1179e
        0x1191e
        0x11a80
        0x11be2
        0x11d62
        0x11ec4
    .end array-data

    .line 713
    :array_4
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    .line 737
    :array_5
    .array-data 4
        0x4
        0x13
        0x3
        0x12
        0x4
        0x13
        0x4
        0x13
        0x4
        0x14
        0x4
        0x14
        0x6
        0x16
        0x6
        0x16
        0x6
        0x16
        0x7
        0x16
        0x6
        0x15
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 785
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    .line 1415
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lmiui/date/Calendar;->xg:J

    .line 1417
    const/16 v0, 0x62e

    iput v0, p0, Lmiui/date/Calendar;->xh:I

    .line 1419
    iget v0, p0, Lmiui/date/Calendar;->xh:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lmiui/date/Calendar;->xh:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lmiui/date/Calendar;->xi:I

    .line 1421
    iget v0, p0, Lmiui/date/Calendar;->xh:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    iget v1, p0, Lmiui/date/Calendar;->xi:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/date/Calendar;->xh:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/date/Calendar;->xj:I

    .line 1424
    const/16 v0, 0xa

    iput v0, p0, Lmiui/date/Calendar;->xk:I

    .line 1426
    const/4 v0, 0x0

    iput v0, p0, Lmiui/date/Calendar;->xl:I

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 793
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 794
    return-void
.end method

.method private static a(JI)I
    .locals 4

    .prologue
    .line 1928
    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 1929
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 1930
    add-int/2addr v0, p2

    .line 1932
    :cond_0
    return v0
.end method

.method private static a(ZI)I
    .locals 1

    .prologue
    .line 1895
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1896
    sget-object v0, Lmiui/date/Calendar;->wW:[B

    aget-byte v0, v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1899
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/date/Calendar;->wW:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 2103
    packed-switch p3, :pswitch_data_0

    .line 2224
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2105
    :pswitch_1
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2113
    :pswitch_2
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p5

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 2117
    :pswitch_3
    if-ne p4, v4, :cond_1

    .line 2118
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2119
    :cond_1
    if-ne p4, v3, :cond_2

    .line 2120
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2122
    :cond_2
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2131
    :pswitch_4
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2134
    :pswitch_5
    if-ne p4, v2, :cond_3

    .line 2135
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    :cond_3
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2140
    :pswitch_6
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    rem-int/lit8 v0, v0, 0xc

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2144
    :pswitch_7
    const/4 v0, 0x3

    if-ge p4, v0, :cond_4

    .line 2145
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2146
    :cond_4
    if-ne p4, v4, :cond_5

    .line 2147
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2148
    :cond_5
    if-ne p4, v3, :cond_6

    .line 2149
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2151
    :cond_6
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2155
    :pswitch_8
    if-eq p4, v2, :cond_7

    .line 2156
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2159
    :cond_7
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2164
    :pswitch_9
    if-eq p4, v2, :cond_8

    .line 2165
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    move-result-object v1

    .line 2166
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    .line 2167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2168
    :goto_1
    if-lez v0, :cond_0

    .line 2169
    rem-int/lit8 v3, v0, 0xa

    .line 2170
    div-int/lit8 v0, v0, 0xa

    .line 2171
    aget-object v3, v1, v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2174
    :cond_8
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v4

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2179
    :pswitch_a
    if-ne p4, v4, :cond_9

    .line 2180
    invoke-direct {p0, p1, v1, v1}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_0

    .line 2181
    :cond_9
    if-ne p4, v3, :cond_a

    .line 2182
    invoke-direct {p0, p1, v5, v1}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_0

    .line 2184
    :cond_a
    invoke-direct {p0, p1, v5, v5}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_0

    .line 2188
    :pswitch_b
    if-eq p4, v2, :cond_b

    .line 2189
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2191
    :cond_b
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2195
    :pswitch_c
    if-eq p4, v2, :cond_c

    .line 2196
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2198
    :cond_c
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2203
    :pswitch_d
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    rem-int/lit8 v0, v0, 0xc

    .line 2204
    if-nez v0, :cond_d

    const/16 v0, 0xc

    :cond_d
    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2208
    :pswitch_e
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2211
    :pswitch_f
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2214
    :pswitch_10
    if-ne p4, v2, :cond_e

    .line 2215
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    rem-int/lit8 v0, v0, 0x64

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2217
    :cond_e
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2221
    :pswitch_11
    invoke-direct {p0, p1, p2, p4}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V

    goto/16 :goto_0

    .line 2103
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2231
    iget-object v3, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x18

    aget v2, v2, v4

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    const/4 v4, 0x4

    if-eq p3, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2234
    if-eqz v0, :cond_2

    .line 2235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 2231
    goto :goto_0

    .line 2237
    :cond_2
    invoke-direct {p0, p1, v1, v1}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;ZZ)V
    .locals 5

    .prologue
    const v4, 0x36ee80

    const/4 v3, 0x2

    .line 2246
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 2247
    const/16 v0, 0x2b

    .line 2248
    if-gez v1, :cond_0

    .line 2249
    const/16 v0, 0x2d

    .line 2250
    neg-int v1, v1

    .line 2252
    :cond_0
    if-eqz p2, :cond_1

    .line 2253
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2256
    div-int v0, v1, v4

    invoke-static {p1, v3, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2257
    if-eqz p3, :cond_2

    .line 2258
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2260
    :cond_2
    rem-int v0, v1, v4

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {p1, v3, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2261
    return-void
.end method

.method private static b(ZI)I
    .locals 1

    .prologue
    .line 1920
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1921
    sget-object v0, Lmiui/date/Calendar;->wX:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1924
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/date/Calendar;->wX:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private b(JJ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1824
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/date/Calendar;->c(JJ)I

    move-result v0

    .line 1825
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xc

    aput v0, v1, v2

    .line 1826
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v4

    iget v2, p0, Lmiui/date/Calendar;->xh:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lmiui/date/Calendar;->xg:J

    cmp-long v1, v2, p3

    if-gtz v1, :cond_0

    .line 1827
    iget v1, p0, Lmiui/date/Calendar;->xk:I

    add-int/2addr v0, v1

    .line 1829
    :cond_0
    div-int/lit8 v1, v0, 0x20

    .line 1830
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v2

    .line 1831
    invoke-static {v2, v1}, Lmiui/date/Calendar;->b(ZI)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1832
    invoke-static {v2, v1}, Lmiui/date/Calendar;->a(ZI)I

    move-result v3

    if-le v0, v3, :cond_1

    .line 1833
    invoke-static {v2, v1}, Lmiui/date/Calendar;->a(ZI)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1834
    add-int/lit8 v1, v1, 0x1

    .line 1837
    :cond_1
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x5

    aput v1, v2, v3

    .line 1838
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x9

    aput v0, v1, v2

    .line 1839
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0xe

    const-wide/16 v2, 0x3

    sub-long v2, p1, v2

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Lmiui/date/Calendar;->a(JI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1840
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;II)V
    .locals 1

    .prologue
    .line 2227
    invoke-static {p1, p2}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    return-void
.end method

.method private bN()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 1218
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v0, v1

    .line 1219
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x5

    aget v3, v0, v3

    .line 1220
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x9

    aget v4, v0, v4

    .line 1222
    int-to-long v6, v2

    invoke-direct {p0, v6, v7}, Lmiui/date/Calendar;->f(J)J

    move-result-wide v6

    .line 1223
    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {v0, v3}, Lmiui/date/Calendar;->b(ZI)I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    int-to-long v8, v0

    add-long/2addr v8, v6

    .line 1225
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0xe

    const-wide/16 v10, 0x3

    sub-long v10, v8, v10

    const/4 v5, 0x7

    invoke-static {v10, v11, v5}, Lmiui/date/Calendar;->a(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v6

    .line 1227
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x12

    aget v0, v0, v6

    const v6, 0x36ee80

    mul-int/2addr v0, v6

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x14

    aget v6, v6, v7

    const v7, 0xea60

    mul-int/2addr v6, v7

    add-int/2addr v0, v6

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x15

    aget v6, v6, v7

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v0, v6

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x16

    aget v6, v6, v7

    add-int/2addr v6, v0

    .line 1229
    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1231
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    int-to-long v0, v0

    .line 1233
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1234
    iget-object v4, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1235
    invoke-direct {p0, v6}, Lmiui/date/Calendar;->y(I)I

    move-result v3

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 1237
    :cond_0
    iget-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    sub-long v0, v4, v0

    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1239
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    .line 1240
    return-void
.end method

.method private bO()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    .line 1243
    const-wide/16 v0, -0x63c1

    .line 1244
    sget-object v2, Lmiui/date/Calendar;->xa:[I

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v6

    add-int/lit16 v3, v3, -0x76c

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1246
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    if-ge v0, v1, :cond_0

    .line 1247
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    invoke-static {v1, v0}, Lmiui/date/Calendar;->d(II)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1251
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    invoke-static {v0, v1}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 1258
    :cond_1
    :goto_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 1260
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/date/Calendar;->b(JJ)V

    .line 1261
    invoke-direct {p0}, Lmiui/date/Calendar;->bN()V

    .line 1262
    return-void

    .line 1253
    :cond_2
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    .line 1254
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    if-ge v0, v1, :cond_1

    .line 1255
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    invoke-static {v0}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    goto :goto_1
.end method

.method private bP()V
    .locals 3

    .prologue
    .line 1303
    invoke-direct {p0}, Lmiui/date/Calendar;->bR()J

    move-result-wide v0

    .line 1304
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1305
    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->e(J)V

    .line 1306
    invoke-direct {p0}, Lmiui/date/Calendar;->bQ()V

    .line 1307
    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->d(J)V

    .line 1309
    :cond_0
    return-void
.end method

.method private bQ()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0xf

    const/4 v3, 0x5

    .line 1347
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Lmiui/date/Calendar;->e(II)I

    move-result v0

    .line 1348
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    shr-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_0

    .line 1349
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 1355
    :goto_0
    return-void

    .line 1350
    :cond_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    and-int/lit16 v0, v0, 0xff

    if-ne v1, v0, :cond_1

    .line 1351
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    aput v1, v0, v4

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x0

    aput v1, v0, v4

    goto :goto_0
.end method

.method private bR()J
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const v13, 0x5265c00

    const/16 v12, 0x10

    const-wide/16 v10, 0x0

    .line 1458
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x17

    iget-object v2, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    aput v2, v0, v1

    .line 1460
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    .line 1461
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 1463
    if-gez v0, :cond_0

    .line 1464
    add-int/2addr v0, v13

    .line 1465
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 1468
    :cond_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x17

    aget v1, v1, v4

    add-int/2addr v0, v1

    move-wide v6, v2

    move v2, v0

    .line 1469
    :goto_0
    if-gez v2, :cond_1

    .line 1470
    add-int/2addr v2, v13

    .line 1471
    const-wide/16 v0, 0x1

    sub-long/2addr v6, v0

    goto :goto_0

    .line 1473
    :cond_1
    :goto_1
    if-lt v2, v13, :cond_2

    .line 1474
    sub-int/2addr v2, v13

    .line 1475
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_1

    .line 1478
    :cond_2
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x17

    aget v3, v0, v1

    .line 1479
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 1480
    iget-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    cmp-long v4, v0, v10

    if-gez v4, :cond_6

    if-lez v3, :cond_6

    .line 1481
    const-wide v0, 0x7fffffffffffffffL

    .line 1486
    :cond_3
    :goto_2
    invoke-direct {p0, v6, v7, v0, v1}, Lmiui/date/Calendar;->b(JJ)V

    .line 1488
    invoke-direct {p0, v2}, Lmiui/date/Calendar;->y(I)I

    move-result v0

    .line 1489
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x18

    aput v0, v1, v3

    .line 1490
    if-eqz v0, :cond_c

    .line 1492
    add-int/2addr v2, v0

    .line 1493
    if-gez v2, :cond_7

    .line 1494
    add-int/2addr v2, v13

    .line 1495
    const-wide/16 v0, 0x1

    sub-long v4, v6, v0

    .line 1500
    :goto_3
    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    .line 1501
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v1, v1, v3

    sub-int v3, v0, v1

    .line 1502
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 1503
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_8

    cmp-long v6, v0, v10

    if-gez v6, :cond_8

    if-lez v3, :cond_8

    .line 1504
    const-wide v0, 0x7fffffffffffffffL

    .line 1509
    :cond_4
    :goto_4
    invoke-direct {p0, v4, v5, v0, v1}, Lmiui/date/Calendar;->b(JJ)V

    :cond_5
    move v0, v2

    move-wide v2, v4

    .line 1513
    :goto_5
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v8

    if-gtz v1, :cond_9

    .line 1514
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v9, v1, v9

    .line 1515
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v8

    rsub-int/lit8 v4, v4, 0x1

    aput v4, v1, v8

    .line 1520
    :goto_6
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x16

    rem-int/lit16 v5, v0, 0x3e8

    aput v5, v1, v4

    .line 1521
    div-int/lit16 v0, v0, 0x3e8

    .line 1522
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x15

    rem-int/lit8 v5, v0, 0x3c

    aput v5, v1, v4

    .line 1523
    div-int/lit8 v0, v0, 0x3c

    .line 1524
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x14

    rem-int/lit8 v5, v0, 0x3c

    aput v5, v1, v4

    .line 1525
    div-int/lit8 v0, v0, 0x3c

    .line 1526
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x12

    rem-int/lit8 v0, v0, 0x18

    aput v0, v1, v4

    .line 1528
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x11

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x12

    aget v0, v0, v5

    const/16 v5, 0xb

    if-le v0, v5, :cond_a

    move v0, v8

    :goto_7
    aput v0, v1, v4

    .line 1530
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1570
    :goto_8
    return-wide v2

    .line 1482
    :cond_6
    iget-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_3

    cmp-long v4, v0, v10

    if-lez v4, :cond_3

    if-gez v3, :cond_3

    .line 1483
    const-wide/high16 v0, -0x8000000000000000L

    goto/16 :goto_2

    .line 1496
    :cond_7
    if-lt v2, v13, :cond_b

    .line 1497
    sub-int/2addr v2, v13

    .line 1498
    const-wide/16 v0, 0x1

    add-long v4, v6, v0

    goto/16 :goto_3

    .line 1505
    :cond_8
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_4

    cmp-long v6, v0, v10

    if-lez v6, :cond_4

    if-gez v3, :cond_4

    .line 1506
    const-wide/high16 v0, -0x8000000000000000L

    goto/16 :goto_4

    .line 1517
    :cond_9
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v8, v1, v9

    goto :goto_6

    :cond_a
    move v0, v9

    .line 1528
    goto :goto_7

    .line 1532
    :pswitch_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput v9, v0, v12

    goto :goto_8

    .line 1539
    :pswitch_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput v8, v0, v12

    goto :goto_8

    .line 1547
    :pswitch_2
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput v1, v0, v12

    goto :goto_8

    .line 1550
    :pswitch_3
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x3

    aput v1, v0, v12

    goto :goto_8

    .line 1557
    :pswitch_4
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x4

    aput v1, v0, v12

    goto :goto_8

    .line 1560
    :pswitch_5
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aput v1, v0, v12

    goto :goto_8

    .line 1567
    :pswitch_6
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x6

    aput v1, v0, v12

    goto :goto_8

    :cond_b
    move-wide v4, v6

    goto/16 :goto_3

    :cond_c
    move v0, v2

    move-wide v2, v6

    goto/16 :goto_5

    .line 1530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private c(JJ)I
    .locals 7

    .prologue
    .line 1847
    const/16 v2, 0x7b2

    .line 1849
    iget-wide v0, p0, Lmiui/date/Calendar;->xg:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    .line 1850
    iget v0, p0, Lmiui/date/Calendar;->xj:I

    int-to-long v0, v0

    sub-long v0, p1, v0

    .line 1854
    :goto_0
    const-wide/16 v4, 0x16d

    div-long v4, v0, v4

    long-to-int v3, v4

    if-eqz v3, :cond_0

    .line 1855
    add-int/2addr v2, v3

    .line 1856
    int-to-long v0, v2

    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->f(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_0

    .line 1858
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 1859
    add-int/lit8 v2, v2, -0x1

    .line 1860
    invoke-direct {p0, v2}, Lmiui/date/Calendar;->u(I)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 1862
    :cond_1
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v4, 0x1

    aput v2, v3, v4

    .line 1863
    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    move-wide v0, p1

    goto :goto_0
.end method

.method static d(II)I
    .locals 3

    .prologue
    .line 1939
    sget-object v0, Lmiui/date/Calendar;->xb:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x10000

    add-int/lit8 v2, p1, 0x1

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method private d(J)V
    .locals 11

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x3c

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 1320
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    .line 1321
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1322
    add-int/lit8 v0, v0, -0x1

    .line 1325
    :cond_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    if-ne v1, v6, :cond_1

    .line 1326
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v9

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v6

    invoke-static {v2, v6}, Lmiui/date/Calendar;->e(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_1

    .line 1327
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    .line 1330
    :cond_1
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x3

    add-int/lit16 v3, v0, -0x76c

    add-int/lit8 v3, v3, 0xc

    int-to-long v4, v3

    const/16 v3, 0xc

    invoke-static {v4, v5, v3}, Lmiui/date/Calendar;->a(JI)I

    move-result v3

    aput v3, v1, v2

    .line 1331
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x4

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    int-to-long v4, v0

    invoke-static {v4, v5, v8}, Lmiui/date/Calendar;->a(JI)I

    move-result v0

    aput v0, v1, v2

    .line 1333
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    invoke-static {v0, v1}, Lmiui/date/Calendar;->e(II)I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    .line 1334
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    add-int/lit16 v0, v0, -0x76c

    mul-int/lit8 v0, v0, 0xc

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v7

    add-int/2addr v0, v2

    .line 1335
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v9

    if-lt v2, v1, :cond_2

    .line 1336
    add-int/lit8 v0, v0, 0x1

    .line 1338
    :cond_2
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x7

    add-int/lit8 v0, v0, 0xc

    int-to-long v4, v0

    invoke-static {v4, v5, v8}, Lmiui/date/Calendar;->a(JI)I

    move-result v0

    aput v0, v1, v2

    .line 1340
    const-wide/16 v0, -0x63c1

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 1341
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xb

    add-int/lit8 v3, v0, 0x28

    int-to-long v4, v3

    invoke-static {v4, v5, v8}, Lmiui/date/Calendar;->a(JI)I

    move-result v3

    aput v3, v1, v2

    .line 1343
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x13

    mul-int/lit8 v0, v0, 0xc

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x18

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-long v4, v0

    invoke-static {v4, v5, v8}, Lmiui/date/Calendar;->a(JI)I

    move-result v0

    aput v0, v1, v2

    .line 1344
    return-void
.end method

.method static e(II)I
    .locals 4

    .prologue
    .line 1977
    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    .line 1978
    const/4 v0, 0x0

    .line 1987
    :goto_0
    return v0

    .line 1981
    :cond_0
    sget-object v0, Lmiui/date/Calendar;->xd:[B

    add-int/lit16 v1, p0, -0x76c

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, -0x30

    .line 1982
    mul-int/lit8 v1, p1, 0x2

    .line 1983
    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    .line 1984
    add-int/lit8 v2, v0, 0x1

    .line 1985
    sget-object v3, Lmiui/date/Calendar;->xe:[B

    aget-byte v0, v3, v0

    add-int/lit8 v0, v0, -0x30

    sget-object v3, Lmiui/date/Calendar;->xc:[I

    aget v3, v3, v1

    add-int/2addr v0, v3

    .line 1986
    sget-object v3, Lmiui/date/Calendar;->xe:[B

    aget-byte v2, v3, v2

    add-int/lit8 v2, v2, -0x30

    sget-object v3, Lmiui/date/Calendar;->xc:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

    add-int/2addr v1, v2

    .line 1987
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private e(J)V
    .locals 11

    .prologue
    const/16 v0, 0x834

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1358
    const-wide/16 v6, -0x63c1

    sub-long v6, p1, v6

    long-to-int v1, v6

    .line 1360
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v4

    if-lt v3, v0, :cond_3

    .line 1361
    :goto_0
    sget-object v3, Lmiui/date/Calendar;->xa:[I

    add-int/lit16 v5, v0, -0x76c

    aget v3, v3, v5

    sub-int/2addr v1, v3

    .line 1362
    if-gez v1, :cond_0

    .line 1363
    add-int/lit8 v0, v0, -0x1

    .line 1364
    invoke-static {v0}, Lmiui/date/Calendar;->v(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1366
    :cond_0
    if-gez v1, :cond_1

    .line 1367
    add-int/lit8 v0, v0, -0x1

    .line 1368
    invoke-static {v0}, Lmiui/date/Calendar;->v(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1371
    :cond_1
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x2

    aput v0, v3, v5

    .line 1372
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0xd

    add-int/lit8 v6, v1, 0x1

    aput v6, v3, v5

    .line 1375
    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v8

    move v6, v2

    move v5, v2

    move v3, v1

    move v1, v2

    .line 1379
    :goto_1
    const/16 v7, 0xc

    if-ge v1, v7, :cond_5

    if-lez v3, :cond_5

    .line 1380
    if-ltz v8, :cond_4

    add-int/lit8 v6, v8, 0x1

    if-ne v1, v6, :cond_4

    if-nez v5, :cond_4

    .line 1381
    add-int/lit8 v5, v1, -0x1

    .line 1383
    invoke-static {v0}, Lmiui/date/Calendar;->w(I)I

    move-result v1

    move v6, v5

    move v5, v1

    move v1, v4

    .line 1388
    :goto_2
    if-eqz v1, :cond_2

    add-int/lit8 v7, v8, 0x1

    if-ne v6, v7, :cond_2

    move v1, v2

    .line 1392
    :cond_2
    sub-int v7, v3, v5

    .line 1379
    add-int/lit8 v3, v6, 0x1

    move v6, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto :goto_1

    .line 1360
    :cond_3
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1385
    :cond_4
    invoke-static {v0, v1}, Lmiui/date/Calendar;->d(II)I

    move-result v6

    move v9, v6

    move v6, v1

    move v1, v5

    move v5, v9

    goto :goto_2

    .line 1395
    :cond_5
    if-nez v3, :cond_9

    if-lez v8, :cond_9

    add-int/lit8 v0, v8, 0x1

    if-ne v1, v0, :cond_9

    .line 1396
    if-eqz v5, :cond_7

    move v0, v1

    move v5, v2

    .line 1404
    :goto_3
    if-gez v3, :cond_8

    .line 1405
    add-int v1, v3, v6

    .line 1406
    add-int/lit8 v0, v0, -0x1

    .line 1408
    :goto_4
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    if-eqz v5, :cond_6

    move v2, v4

    :cond_6
    aput v2, v3, v6

    .line 1409
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x6

    aput v0, v2, v3

    .line 1410
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 1411
    return-void

    .line 1400
    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v5, v4

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method private f(J)J
    .locals 13

    .prologue
    const-wide/16 v10, 0x190

    const-wide/16 v8, 0x64

    const-wide/16 v6, 0x16d

    const-wide/16 v4, 0x4

    const-wide/16 v2, 0x7b2

    .line 1870
    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    .line 1871
    sub-long v0, p1, v2

    mul-long/2addr v0, v6

    const-wide/16 v2, 0x7b1

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1872
    iget v2, p0, Lmiui/date/Calendar;->xh:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1873
    const-wide/16 v2, 0x76d

    sub-long v2, p1, v2

    div-long/2addr v2, v8

    const-wide/16 v4, 0x641

    sub-long v4, p1, v4

    div-long/2addr v4, v10

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1887
    :goto_0
    return-wide v0

    .line 1875
    :cond_0
    iget v2, p0, Lmiui/date/Calendar;->xh:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1876
    iget v2, p0, Lmiui/date/Calendar;->xk:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1877
    :cond_1
    iget v2, p0, Lmiui/date/Calendar;->xh:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 1878
    iget v2, p0, Lmiui/date/Calendar;->xl:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1880
    :cond_2
    iget v2, p0, Lmiui/date/Calendar;->xj:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1884
    :cond_3
    iget v0, p0, Lmiui/date/Calendar;->xh:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4

    .line 1885
    sub-long v0, p1, v2

    mul-long/2addr v0, v6

    const-wide/16 v2, 0x7b4

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Lmiui/date/Calendar;->xj:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1887
    :cond_4
    sub-long v0, p1, v2

    mul-long/2addr v0, v6

    const-wide/16 v2, 0x7b4

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    sub-long v2, p1, v2

    div-long/2addr v2, v8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    sub-long v2, p1, v2

    div-long/2addr v2, v10

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private u(I)I
    .locals 2

    .prologue
    .line 1906
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x16e

    .line 1907
    :goto_0
    iget v1, p0, Lmiui/date/Calendar;->xh:I

    if-ne p1, v1, :cond_0

    .line 1908
    iget v1, p0, Lmiui/date/Calendar;->xk:I

    sub-int/2addr v0, v1

    .line 1910
    :cond_0
    iget v1, p0, Lmiui/date/Calendar;->xh:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1911
    iget v1, p0, Lmiui/date/Calendar;->xl:I

    sub-int/2addr v0, v1

    .line 1913
    :cond_1
    return v0

    .line 1906
    :cond_2
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method static v(I)I
    .locals 3

    .prologue
    .line 1947
    sget-object v0, Lmiui/date/Calendar;->xa:[I

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lmiui/date/Calendar;->xa:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method static w(I)I
    .locals 2

    .prologue
    .line 1957
    invoke-static {p0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lmiui/date/Calendar;->xb:[I

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static x(I)I
    .locals 2

    .prologue
    .line 1966
    sget-object v0, Lmiui/date/Calendar;->xb:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    .line 1967
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private y(I)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 2264
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    if-gtz v0, :cond_1

    move v0, v7

    .line 2266
    :goto_0
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v2, v1

    if-lez v1, :cond_0

    .line 2267
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    sub-int v7, v0, v1

    .line 2270
    :cond_0
    return v7

    .line 2264
    :cond_1
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public add(II)Lmiui/date/Calendar;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1015
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-lt p1, v0, :cond_1

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1212
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported set field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/date/Calendar;->wY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :pswitch_1
    if-eqz p2, :cond_2

    .line 1022
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    add-int/2addr v0, p2

    rem-int/lit8 v0, v0, 0x2

    .line 1023
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    if-eq v1, v0, :cond_2

    .line 1024
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    .line 1025
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    rsub-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 1026
    invoke-direct {p0}, Lmiui/date/Calendar;->bN()V

    .line 1214
    :cond_2
    :goto_0
    return-object p0

    .line 1033
    :pswitch_2
    if-eqz p2, :cond_2

    .line 1034
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    if-nez v0, :cond_3

    .line 1035
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    rsub-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 1037
    :cond_3
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2

    .line 1038
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v0, v1}, Lmiui/date/Calendar;->a(ZI)I

    move-result v0

    .line 1039
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-le v1, v0, :cond_4

    .line 1040
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x9

    aput v0, v1, v2

    .line 1042
    :cond_4
    invoke-direct {p0}, Lmiui/date/Calendar;->bN()V

    goto :goto_0

    .line 1047
    :pswitch_3
    if-eqz p2, :cond_2

    .line 1048
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    add-int/2addr v0, p2

    .line 1049
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x76c

    if-lt v0, v1, :cond_5

    const/16 v1, 0x834

    if-le v0, v1, :cond_6

    .line 1050
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range of Chinese Lunar Year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_6
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v0, v1, v7

    .line 1054
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v8

    if-ne v0, v2, :cond_7

    .line 1055
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v7

    invoke-static {v1}, Lmiui/date/Calendar;->x(I)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1056
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput v3, v0, v8

    .line 1060
    :cond_7
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v8

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    invoke-static {v0}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    .line 1063
    :goto_1
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    if-le v1, v0, :cond_8

    .line 1064
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aput v0, v1, v2

    .line 1066
    :cond_8
    invoke-direct {p0}, Lmiui/date/Calendar;->bO()V

    goto/16 :goto_0

    .line 1060
    :cond_9
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    goto :goto_1

    .line 1071
    :pswitch_4
    if-eqz p2, :cond_2

    .line 1072
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    add-int v1, p2, v0

    .line 1073
    div-int/lit8 v0, v1, 0xc

    .line 1074
    rem-int/lit8 v1, v1, 0xc

    .line 1075
    if-gez v1, :cond_a

    .line 1076
    add-int/lit8 v1, v1, 0xc

    .line 1077
    add-int/lit8 v0, v0, -0x1

    .line 1080
    :cond_a
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x5

    aput v1, v4, v5

    .line 1081
    if-nez v0, :cond_d

    .line 1082
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    if-nez v0, :cond_b

    .line 1083
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    rsub-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 1086
    :cond_b
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v0, v1}, Lmiui/date/Calendar;->a(ZI)I

    move-result v0

    .line 1087
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-le v1, v0, :cond_c

    .line 1088
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x9

    aput v0, v1, v2

    .line 1090
    :cond_c
    invoke-direct {p0}, Lmiui/date/Calendar;->bN()V

    goto/16 :goto_0

    .line 1092
    :cond_d
    invoke-virtual {p0, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto/16 :goto_0

    .line 1098
    :pswitch_5
    if-eqz p2, :cond_2

    .line 1099
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range of Chinese Lunar Year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_e
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    move v1, p2

    .line 1104
    :goto_2
    if-lez v1, :cond_12

    .line 1105
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    if-ne v4, v0, :cond_10

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v8

    if-nez v4, :cond_10

    .line 1106
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aput v2, v4, v8

    .line 1104
    :cond_f
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1108
    :cond_10
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v4, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v6

    .line 1109
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aput v3, v4, v8

    .line 1110
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    const/16 v5, 0xb

    if-le v4, v5, :cond_f

    .line 1111
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput v3, v0, v6

    .line 1112
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v0, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v7

    .line 1113
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    const/16 v4, 0x834

    if-le v0, v4, :cond_11

    .line 1114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range of Chinese Lunar Year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_11
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    goto :goto_3

    .line 1121
    :cond_12
    :goto_4
    if-gez v1, :cond_17

    .line 1122
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    if-ne v4, v0, :cond_14

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v8

    if-ne v4, v2, :cond_14

    .line 1123
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aput v3, v4, v8

    .line 1121
    :cond_13
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1125
    :cond_14
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v4, v6

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v6

    .line 1126
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    if-gez v4, :cond_16

    .line 1127
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0xb

    aput v4, v0, v6

    .line 1128
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v0, v6

    add-int/lit8 v4, v4, -0x1

    aput v4, v0, v6

    .line 1129
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    const/16 v4, 0x76c

    if-ge v0, v4, :cond_15

    .line 1130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range of Chinese Lunar Year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_15
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    .line 1134
    :cond_16
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    if-ne v4, v0, :cond_13

    .line 1135
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aput v2, v4, v8

    goto :goto_5

    .line 1140
    :cond_17
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v8

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    invoke-static {v0}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    .line 1143
    :goto_6
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    if-le v1, v0, :cond_18

    .line 1144
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aput v0, v1, v2

    .line 1146
    :cond_18
    invoke-direct {p0}, Lmiui/date/Calendar;->bO()V

    goto/16 :goto_0

    .line 1140
    :cond_19
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    goto :goto_6

    .line 1154
    :pswitch_6
    if-eqz p2, :cond_2

    .line 1155
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, p2

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 1156
    if-lez p2, :cond_1a

    move v0, v2

    :goto_7
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1b

    :goto_8
    if-eq v0, v2, :cond_1c

    .line 1157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move v0, v3

    .line 1156
    goto :goto_7

    :cond_1b
    move v2, v3

    goto :goto_8

    .line 1159
    :cond_1c
    iput-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1160
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    goto/16 :goto_0

    .line 1165
    :pswitch_7
    if-eqz p2, :cond_2

    .line 1166
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, p2

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 1167
    if-lez p2, :cond_1d

    move v0, v2

    :goto_9
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1e

    :goto_a
    if-eq v0, v2, :cond_1f

    .line 1168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move v0, v3

    .line 1167
    goto :goto_9

    :cond_1e
    move v2, v3

    goto :goto_a

    .line 1170
    :cond_1f
    iput-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1171
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    goto/16 :goto_0

    .line 1177
    :pswitch_8
    if-eqz p2, :cond_2

    .line 1178
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, p2

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 1179
    if-lez p2, :cond_20

    move v0, v2

    :goto_b
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_21

    :goto_c
    if-eq v0, v2, :cond_22

    .line 1180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move v0, v3

    .line 1179
    goto :goto_b

    :cond_21
    move v2, v3

    goto :goto_c

    .line 1182
    :cond_22
    iput-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1183
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    goto/16 :goto_0

    .line 1189
    :pswitch_9
    if-eqz p2, :cond_2

    .line 1190
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 1191
    if-lez p2, :cond_23

    move v0, v2

    :goto_d
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_24

    :goto_e
    if-eq v0, v2, :cond_25

    .line 1192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v0, v3

    .line 1191
    goto :goto_d

    :cond_24
    move v2, v3

    goto :goto_e

    .line 1194
    :cond_25
    iput-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1195
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    goto/16 :goto_0

    .line 1201
    :pswitch_a
    if-eqz p2, :cond_2

    .line 1202
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, p2

    add-long/2addr v4, v0

    .line 1203
    if-lez p2, :cond_26

    move v0, v2

    :goto_f
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_27

    :goto_10
    if-eq v0, v2, :cond_28

    .line 1204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    move v0, v3

    .line 1203
    goto :goto_f

    :cond_27
    move v2, v3

    goto :goto_10

    .line 1206
    :cond_28
    iput-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1207
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    goto/16 :goto_0

    .line 1019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public after(Lmiui/date/Calendar;)Z
    .locals 4

    .prologue
    .line 1676
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public before(Lmiui/date/Calendar;)Z
    .locals 4

    .prologue
    .line 1692
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1653
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 1654
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lmiui/date/Calendar;->mFields:[I

    .line 1655
    iget-object v1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    return-object v0

    .line 1657
    :catch_0
    move-exception v0

    .line 1659
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lmiui/date/Calendar;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->compareTo(Lmiui/date/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/date/Calendar;)I
    .locals 4

    .prologue
    .line 1602
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1620
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lmiui/date/Calendar;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    check-cast p1, Lmiui/date/Calendar;

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public format(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2018
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 2019
    invoke-virtual {p0, v0, p1, p2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2020
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 2021
    return-object v1
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 2039
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .locals 12

    .prologue
    const/16 v11, 0x27

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2056
    if-nez p3, :cond_8

    .line 2057
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v2

    .line 2063
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move v0, v8

    move v7, v8

    :goto_1
    if-ge v0, v10, :cond_7

    .line 2064
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2066
    if-eqz v7, :cond_2

    .line 2067
    if-ne v3, v11, :cond_1

    .line 2068
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v10, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2069
    add-int/lit8 v0, v0, 0x1

    .line 2070
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v7

    .line 2063
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v7, v1

    goto :goto_1

    :cond_0
    move v1, v8

    .line 2072
    goto :goto_2

    .line 2075
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v7

    .line 2077
    goto :goto_2

    .line 2080
    :cond_2
    if-ne v3, v11, :cond_4

    .line 2081
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v10, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    .line 2082
    add-int/lit8 v0, v0, 0x1

    .line 2083
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v9

    .line 2085
    goto :goto_2

    .line 2088
    :cond_4
    const/16 v1, 0x41

    if-lt v3, v1, :cond_6

    const/16 v1, 0x7a

    if-gt v3, v1, :cond_6

    sget-object v1, Lmiui/date/Calendar;->wZ:[I

    add-int/lit8 v4, v3, -0x41

    aget v1, v1, v4

    if-ltz v1, :cond_6

    move v6, v0

    move v4, v9

    .line 2089
    :goto_3
    add-int/lit8 v0, v6, 0x1

    if-ge v0, v10, :cond_5

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    .line 2090
    add-int/lit8 v6, v6, 0x1

    .line 2089
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2092
    :cond_5
    sget-object v0, Lmiui/date/Calendar;->wZ:[I

    add-int/lit8 v1, v3, -0x41

    aget v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V

    move v0, v6

    move v1, v7

    goto :goto_2

    .line 2094
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v7

    goto :goto_2

    .line 2099
    :cond_7
    return-object p1

    :cond_8
    move-object v2, p3

    goto :goto_0
.end method

.method public get(I)I
    .locals 3

    .prologue
    .line 1296
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-lt p1, v0, :cond_1

    .line 1297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/16 v2, 0x3b

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1700
    if-ltz p1, :cond_0

    const/16 v4, 0x19

    if-lt p1, v4, :cond_1

    .line 1701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/date/Calendar;->wY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 1747
    :cond_2
    :goto_0
    return v0

    .line 1708
    :pswitch_1
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_3

    const v0, 0x116bd2d2

    goto :goto_0

    :cond_3
    const v0, 0x116babff

    goto :goto_0

    .line 1710
    :pswitch_2
    const/16 v0, 0x834

    goto :goto_0

    .line 1712
    :pswitch_3
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 1717
    goto :goto_0

    .line 1720
    :pswitch_5
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 1722
    goto :goto_0

    .line 1724
    :pswitch_7
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v0, v1}, Lmiui/date/Calendar;->a(ZI)I

    move-result v0

    goto :goto_0

    .line 1726
    :pswitch_8
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    invoke-static {v0}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    goto :goto_0

    .line 1729
    :pswitch_9
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lmiui/date/Calendar;->u(I)I

    move-result v0

    goto :goto_0

    .line 1731
    :pswitch_a
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    invoke-static {v0}, Lmiui/date/Calendar;->v(I)I

    move-result v0

    goto :goto_0

    .line 1733
    :pswitch_b
    const/4 v0, 0x7

    goto :goto_0

    .line 1735
    :pswitch_c
    const/16 v0, 0x18

    goto :goto_0

    :pswitch_d
    move v0, v3

    .line 1737
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 1739
    goto :goto_0

    .line 1741
    :pswitch_f
    const/16 v0, 0x17

    goto :goto_0

    :pswitch_10
    move v0, v2

    .line 1743
    goto :goto_0

    :pswitch_11
    move v0, v2

    .line 1745
    goto :goto_0

    .line 1747
    :pswitch_12
    const/16 v0, 0x3e7

    goto :goto_0

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1756
    if-ltz p1, :cond_0

    const/16 v2, 0x19

    if-lt p1, v2, :cond_1

    .line 1757
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/date/Calendar;->wY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 1802
    :cond_2
    :goto_0
    :pswitch_1
    return v0

    .line 1766
    :pswitch_2
    const/16 v0, 0x76c

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1780
    goto :goto_0

    .line 1782
    :pswitch_4
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 1784
    goto :goto_0

    .line 1786
    :pswitch_6
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1788
    goto :goto_0

    .line 1760
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getChineseLeapMonth()I
    .locals 2

    .prologue
    .line 1588
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    return v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 826
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1610
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isChineseLeapMonth()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1580
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapYear(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1813
    iget v2, p0, Lmiui/date/Calendar;->xh:I

    if-le p1, v2, :cond_2

    .line 1814
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1814
    goto :goto_0

    .line 1817
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public outOfChineseCalendarRange()Z
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x17

    .line 1315
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide v2, -0x201b77f5c00L

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v7

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide v2, 0x3c314a71400L

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v7

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)Lmiui/date/Calendar;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x2

    .line 963
    if-ne p1, v2, :cond_5

    .line 964
    if-gez p2, :cond_2

    .line 965
    neg-int p2, p2

    .line 966
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    invoke-static {v0}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 967
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no such leap month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput v5, v0, v4

    .line 977
    :goto_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, v0, v2

    .line 978
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    invoke-static {v0}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    .line 981
    :goto_1
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    if-le v1, v0, :cond_1

    .line 982
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v0, v1, v6

    .line 984
    :cond_1
    invoke-direct {p0}, Lmiui/date/Calendar;->bO()V

    .line 998
    :goto_2
    return-object p0

    .line 971
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v0

    if-ge p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le p2, v0, :cond_3

    .line 972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value is out of date range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_3
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x0

    aput v1, v0, v4

    goto :goto_0

    .line 978
    :cond_4
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    goto :goto_1

    .line 988
    :cond_5
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v0

    if-ge p2, v0, :cond_6

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le p2, v0, :cond_6

    .line 989
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value is out of date range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_6
    :try_start_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p1

    sub-int v0, p2, v0

    invoke-virtual {p0, p1, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 995
    :catch_0
    move-exception v0

    .line 996
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported set field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/date/Calendar;->wY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(IIIIIII)Lmiui/date/Calendar;
    .locals 3

    .prologue
    const/16 v1, 0x3b

    .line 852
    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {v0, p2}, Lmiui/date/Calendar;->a(ZI)I

    move-result v0

    if-le p3, v0, :cond_3

    .line 857
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_3
    if-ltz p4, :cond_4

    const/16 v0, 0x17

    if-le p4, v0, :cond_5

    .line 861
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_5
    if-ltz p5, :cond_6

    if-le p5, v1, :cond_7

    .line 865
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_7
    if-ltz p6, :cond_8

    if-le p6, v1, :cond_9

    .line 869
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_9
    if-ltz p7, :cond_a

    const/16 v0, 0x3e7

    if-le p7, v0, :cond_b

    .line 873
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid millisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_b
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 877
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 878
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x9

    aput p3, v0, v1

    .line 879
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aput p4, v0, v1

    .line 880
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x14

    aput p5, v0, v1

    .line 881
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x15

    aput p6, v0, v1

    .line 882
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x16

    aput p7, v0, v1

    .line 884
    invoke-direct {p0}, Lmiui/date/Calendar;->bN()V

    .line 885
    return-object p0
.end method

.method public setChineseTime(IIIZIIII)Lmiui/date/Calendar;
    .locals 3

    .prologue
    const/16 v1, 0x3b

    .line 901
    const/16 v0, 0x76c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x834

    if-le p1, v0, :cond_1

    .line 902
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date out of range [1900 - 2100] expected, but year is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0xb

    if-le p2, v0, :cond_3

    .line 906
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_3
    if-eqz p4, :cond_4

    invoke-static {p1}, Lmiui/date/Calendar;->x(I)I

    move-result v0

    if-eq v0, p2, :cond_4

    .line 910
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no leap month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_4
    if-eqz p4, :cond_6

    .line 914
    if-lez p3, :cond_5

    invoke-static {p1}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    if-le p3, v0, :cond_8

    .line 915
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_6
    if-lez p3, :cond_7

    invoke-static {p1, p2}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    if-le p3, v0, :cond_8

    .line 919
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_8
    if-ltz p5, :cond_9

    const/16 v0, 0x17

    if-le p5, v0, :cond_a

    .line 924
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_a
    if-ltz p6, :cond_b

    if-le p6, v1, :cond_c

    .line 928
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_c
    if-ltz p7, :cond_d

    if-le p7, v1, :cond_e

    .line 932
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_e
    if-ltz p8, :cond_f

    const/16 v0, 0x3e8

    if-le p8, v0, :cond_10

    .line 936
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid millisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_10
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 940
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x6

    aput p2, v0, v1

    .line 941
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 942
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x8

    if-eqz p4, :cond_11

    const/4 v0, 0x1

    :goto_0
    aput v0, v1, v2

    .line 943
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aput p5, v0, v1

    .line 944
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x14

    aput p6, v0, v1

    .line 945
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x15

    aput p7, v0, v1

    .line 946
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x16

    aput p8, v0, v1

    .line 948
    invoke-direct {p0}, Lmiui/date/Calendar;->bO()V

    .line 949
    return-object p0

    .line 942
    :cond_11
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGregorianChange(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1433
    iput-wide p1, p0, Lmiui/date/Calendar;->xg:J

    .line 1434
    new-instance v0, Lmiui/date/Calendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 1435
    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 1437
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lmiui/date/Calendar;->xh:I

    .line 1438
    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1439
    iget v1, p0, Lmiui/date/Calendar;->xh:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/date/Calendar;->xh:I

    .line 1442
    :cond_0
    iget v1, p0, Lmiui/date/Calendar;->xh:I

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lmiui/date/Calendar;->xh:I

    div-int/lit16 v2, v2, 0x190

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiui/date/Calendar;->xi:I

    .line 1444
    iget v1, p0, Lmiui/date/Calendar;->xh:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit16 v1, v1, 0x190

    iget v2, p0, Lmiui/date/Calendar;->xi:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiui/date/Calendar;->xh:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/date/Calendar;->xj:I

    .line 1447
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 1448
    iget v1, p0, Lmiui/date/Calendar;->xj:I

    if-ge v0, v1, :cond_1

    .line 1449
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmiui/date/Calendar;->xk:I

    .line 1450
    iget v1, p0, Lmiui/date/Calendar;->xj:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/date/Calendar;->xl:I

    .line 1455
    :goto_0
    return-void

    .line 1452
    :cond_1
    iput v3, p0, Lmiui/date/Calendar;->xl:I

    .line 1453
    iget v0, p0, Lmiui/date/Calendar;->xj:I

    iput v0, p0, Lmiui/date/Calendar;->xk:I

    goto :goto_0
.end method

.method public setTimeInMillis(J)Lmiui/date/Calendar;
    .locals 1

    .prologue
    .line 835
    iput-wide p1, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 836
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    .line 837
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;
    .locals 2

    .prologue
    .line 802
    if-nez p1, :cond_0

    .line 803
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 806
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    :cond_1
    iput-object p1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 808
    invoke-direct {p0}, Lmiui/date/Calendar;->bP()V

    .line 810
    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1628
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const-string v1, "[time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1632
    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    iget-object v1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    .line 1636
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1637
    sget-object v2, Lmiui/date/Calendar;->wY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1639
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1641
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1643
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 1644
    return-object v1
.end method

.class public Lmiui/maml/elements/MusicLyricParser;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicLyricParser$EntityCompator;,
        Lmiui/maml/elements/MusicLyricParser$Lyric;,
        Lmiui/maml/elements/MusicLyricParser$LyricHeader;,
        Lmiui/maml/elements/MusicLyricParser$LyricEntity;,
        Lmiui/maml/elements/MusicLyricParser$LyricShot;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    return-void
.end method

.method private static correctTime(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 7
    .param p0, "lyric"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 397
    if-nez p0, :cond_1

    .line 410
    :cond_0
    return-void

    .line 399
    :cond_1
    # getter for: Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;
    invoke-static {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->access$000(Lmiui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    move-result-object v0

    .line 400
    .local v0, "el":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/MusicLyricParser$LyricEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 401
    .local v2, "size":I
    if-le v2, v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v4, v3, :cond_2

    .line 402
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 405
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v4, v3, :cond_3

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 405
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static doParse(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .locals 11
    .param p0, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v9, 0x0

    .line 429
    .local v9, "needModify":Z
    const/4 v8, 0x0

    .line 430
    .local v8, "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    new-instance v2, Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    invoke-direct {v2}, Lmiui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    .line 431
    .local v2, "header":Lmiui/maml/elements/MusicLyricParser$LyricHeader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v1, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/MusicLyricParser$LyricEntity;>;"
    const-string v10, "\r\n"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 433
    .local v7, "lines":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 434
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 435
    .local v5, "line":Ljava/lang/String;
    invoke-static {v5, v2, v1}, Lmiui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v6

    .line 437
    .local v6, "lineParseRet":I
    if-nez v6, :cond_2

    .line 447
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineParseRet":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 448
    new-instance v10, Lmiui/maml/elements/MusicLyricParser$EntityCompator;

    invoke-direct {v10}, Lmiui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$Lyric;

    .end local v8    # "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    invoke-direct {v8, v2, v1, v9}, Lmiui/maml/elements/MusicLyricParser$Lyric;-><init>(Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    .line 452
    .restart local v8    # "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    :cond_1
    return-object v8

    .line 441
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lineParseRet":I
    :cond_2
    const/4 v10, 0x1

    if-ne v6, v10, :cond_3

    .line 442
    const/4 v9, 0x1

    .line 434
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 12
    .param p0, "values"    # [Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/MusicLyricParser$LyricEntity;>;"
    const/4 v2, 0x2

    .line 551
    .local v2, "lineParseRet":I
    :try_start_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 552
    .local v4, "time":I
    const/4 v3, 0x0

    .line 553
    .local v3, "second":I
    const/16 v6, 0x3c

    .line 554
    .local v6, "weight":I
    array-length v7, p0

    add-int/lit8 v1, v7, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 555
    aget-object v7, p0, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 556
    .local v5, "val":I
    mul-int/2addr v5, v6

    .line 557
    mul-int/lit8 v6, v6, 0x3c

    .line 558
    add-int/2addr v3, v5

    .line 554
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 561
    .end local v5    # "val":I
    :cond_0
    mul-int/lit16 v7, v3, 0x3e8

    add-int/2addr v4, v7

    .line 563
    const v7, 0x112a880

    if-ge v4, v7, :cond_1

    .line 564
    new-instance v7, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-direct {v7, v4, p2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v1    # "i":I
    .end local v3    # "second":I
    .end local v4    # "time":I
    .end local v6    # "weight":I
    :cond_1
    :goto_1
    return v2

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static parseHeader(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "header"    # Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    .prologue
    .line 515
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 516
    .local v1, "indexOfTag":I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_1

    .line 517
    :cond_0
    const/4 v2, 0x1

    .line 544
    :goto_0
    return v2

    .line 520
    :cond_1
    const/4 v2, 0x2

    .line 521
    .local v2, "lineParseRet":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "tag":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "value":Ljava/lang/String;
    const-string v5, "al"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 525
    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    goto :goto_0

    .line 526
    :cond_2
    const-string v5, "ar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 527
    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_0

    .line 528
    :cond_3
    const-string v5, "ti"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 529
    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_0

    .line 530
    :cond_4
    const-string v5, "by"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 531
    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_0

    .line 532
    :cond_5
    const-string/jumbo v5, "ve"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 533
    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_0

    .line 534
    :cond_6
    const-string v5, "offset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 536
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .line 539
    goto :goto_0

    .line 541
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static parseLine(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .locals 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "header"    # Lmiui/maml/elements/MusicLyricParser$LyricHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmiui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 469
    .local p2, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/MusicLyricParser$LyricEntity;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 471
    const/4 v7, 0x1

    .line 510
    :cond_0
    :goto_0
    return v7

    .line 474
    :cond_1
    sget-object v11, Lmiui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 475
    .local v8, "matcher":Ljava/util/regex/Matcher;
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 477
    const-string v11, "]"

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 478
    .local v4, "indexOfLastTag":I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_2

    .line 479
    const/4 v7, 0x1

    goto :goto_0

    .line 481
    :cond_2
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "content":Ljava/lang/String;
    const-string v11, "["

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 484
    .local v5, "indexOfLeftTag":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_3

    .line 485
    const/4 v7, 0x1

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 490
    const/4 v7, 0x2

    .line 491
    .local v7, "lineParseRet":I
    const-string v11, "]"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "entityStr":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v9, v0, v3

    .line 493
    .local v9, "s":Ljava/lang/String;
    const-string v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 492
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 498
    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "values":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_4

    .line 503
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 504
    invoke-static {v10, p2, v1}, Lmiui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 506
    :cond_6
    invoke-static {v9, p1}, Lmiui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;)I

    move-result v7

    goto :goto_2
.end method

.method public static parseLyric(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .locals 2
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    if-eqz p0, :cond_0

    .line 416
    :try_start_0
    invoke-static {p0}, Lmiui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v1

    .line 417
    invoke-static {v1}, Lmiui/maml/elements/MusicLyricParser;->correctTime(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_0
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

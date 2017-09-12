.class final Lmiui/util/AudioOutputHelper$CompatCollector;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"

# interfaces
.implements Lmiui/util/AudioOutputHelper$TrackCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatCollector"
.end annotation


# static fields
.field public static final ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final TRACK_SESSION_GRP_IDX:I = 0x3

.field public static final TRACK_STREAM_TYPE_GRP_IDX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    const-string v0, "^Output thread 0x[\\w]+ tracks"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    .line 423
    const-string v0, "^Output thread 0x[\\w]+ active tracks"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    .line 430
    const-string v0, "^(\\s|F)+\\d+\\s+\\d+\\s+(\\d+)\\s+\\d+\\s+\\w+\\s+(\\d+)\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 10
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p4, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p3, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 461
    .local v1, "content":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 462
    sget-object v9, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 463
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 490
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v1

    .line 467
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 468
    .local v7, "sessionId":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 469
    .local v6, "proc":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 470
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 471
    .local v5, "pid":I
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 472
    .local v8, "streamType":I
    const/4 v2, 0x0

    .line 475
    .local v2, "found":Z
    if-eqz p4, :cond_4

    .line 476
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 477
    .local v0, "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget v9, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    if-ne v9, v7, :cond_3

    .line 478
    iput-boolean p4, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    .line 479
    const/4 v2, 0x1

    goto :goto_1

    .line 484
    .end local v0    # "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_0

    .line 485
    new-instance v9, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v9, v7, v5, v8, p4}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;
    .locals 5
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "currentLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmiui/util/AudioOutputHelper$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p4, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 438
    sget-object v2, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 439
    .local v1, "trackMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 443
    new-instance v2, Lmiui/util/AudioOutputHelper$Result;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, p4, v3}, Lmiui/util/AudioOutputHelper$CompatCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    .line 454
    :goto_0
    return-object v2

    .line 446
    :cond_0
    sget-object v2, Lmiui/util/AudioOutputHelper$CompatCollector;->ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 447
    .local v0, "activeTrackMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 451
    new-instance v2, Lmiui/util/AudioOutputHelper$Result;

    invoke-direct {p0, p1, p3, p4, v4}, Lmiui/util/AudioOutputHelper$CompatCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    sget-object v2, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    goto :goto_0
.end method

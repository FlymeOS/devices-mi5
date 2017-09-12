.class final Lmiui/util/AudioOutputHelper$LPCollector;
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
    name = "LPCollector"
.end annotation


# static fields
.field public static final ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

.field public static final TRACK_ACTIVE_IDX:I = 0x2

.field public static final TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

.field public static final TRACK_SESSION_GRP_IDX:I = 0x4

.field public static final TRACK_STREAM_TYPE_GRP_IDX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    const-string v0, "^[\\s]+[\\d]+[\\s]+Tracks of which [\\d]+ are active"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$LPCollector;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    .line 373
    const-string v0, "^(\\s|F)+\\d+\\s+(\\w+)\\s+\\d+\\s+(\\d+)\\s+\\d+\\s+\\d+\\s+(\\d+)\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$LPCollector;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p1, "reader"    # Ljava/io/BufferedReader;
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
            ">;)",
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
    .line 396
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p3, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 397
    .local v1, "content":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    sget-object v7, Lmiui/util/AudioOutputHelper$LPCollector;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 399
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 412
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v1

    .line 402
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 403
    .local v5, "sessionId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 404
    .local v4, "proc":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 405
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 406
    .local v3, "pid":I
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 407
    .local v6, "streamType":I
    const-string/jumbo v7, "yes"

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 408
    .local v0, "active":Z
    new-instance v7, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v7, v5, v3, v6, v0}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;
    .locals 4
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
    .line 382
    .local p3, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p4, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Lmiui/util/AudioOutputHelper$LPCollector;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, "trackMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 387
    new-instance v1, Lmiui/util/AudioOutputHelper$Result;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p3, p4}, Lmiui/util/AudioOutputHelper$LPCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    .line 390
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    goto :goto_0
.end method

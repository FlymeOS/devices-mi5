.class Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricLocator"
.end annotation


# instance fields
.field final CRLF_LENGTH:I

.field mFullLyric:Ljava/lang/String;

.field mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field mTimeArr:[I

.field final synthetic this$0:Lmiui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    return-void
.end method

.method private getLineNumber(J)I
    .locals 5
    .param p1, "position"    # J

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 309
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    aget v1, v1, v0

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-long v2, v1

    :goto_1
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 314
    .end local v0    # "i":I
    :goto_2
    return v0

    .line 309
    .restart local v0    # "i":I
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private inflateLyricLines(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "lyricArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .line 275
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v4, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 276
    :cond_0
    iput-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 277
    iput-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 293
    :cond_1
    return-void

    .line 280
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 282
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 283
    .local v3, "lyric":Ljava/lang/CharSequence;
    new-instance v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v2, v4}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    .line 284
    .local v2, "line":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    iput-object v3, v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 285
    if-lez v0, :cond_3

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    move-object v1, v4

    .line 286
    .local v1, "last":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    :goto_1
    if-eqz v1, :cond_4

    iget v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v6, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v4, v6

    :goto_2
    iput v4, v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 287
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "last":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    :cond_3
    move-object v1, v5

    .line 285
    goto :goto_1

    .line 286
    .restart local v1    # "last":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 289
    .end local v1    # "last":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    .end local v2    # "line":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    .end local v3    # "lyric":Ljava/lang/CharSequence;
    :cond_5
    const-string v4, ""

    iput-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v4, v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method getAfterLines(J)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v2

    .line 333
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    .line 334
    .local v1, "num":I
    if-gez v1, :cond_2

    .line 335
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 337
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 338
    .local v0, "line":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getBeforeLines(J)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v2

    .line 321
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    .line 322
    .local v1, "num":I
    if-lez v1, :cond_0

    .line 323
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 324
    .local v0, "line":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getLastLine(J)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v3, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-object v2

    .line 348
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    .line 349
    .local v1, "num":I
    if-lez v1, :cond_0

    .line 350
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 351
    .local v0, "last":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getLine(J)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v2

    .line 299
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    .line 300
    .local v1, "num":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 301
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 302
    .local v0, "line":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getNextLine(J)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v2

    .line 360
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    .line 361
    .local v1, "num":I
    const/4 v3, -0x1

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 362
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 363
    .local v0, "next":Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method set([ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "time"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "lyric":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 271
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    .line 272
    return-void
.end method

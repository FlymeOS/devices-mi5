.class Lmiui/net/http/HttpSession$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private Bh:J

.field private Ce:Lmiui/net/http/HttpSession$ProgressListener;

.field private Cf:J

.field private Cg:J

.field private Ch:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    .line 681
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 682
    iput-object p1, p0, Lmiui/net/http/HttpSession$a;->Ch:Lorg/apache/http/HttpEntity;

    .line 683
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/net/http/HttpSession$a;->Bh:J

    .line 684
    iput-object p3, p0, Lmiui/net/http/HttpSession$a;->Ce:Lmiui/net/http/HttpSession$ProgressListener;

    .line 685
    iput-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    .line 686
    iput-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cg:J

    .line 688
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 689
    const-string v0, "bytes\\s+(\\d+)-(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 690
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 692
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    .line 693
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/net/http/HttpSession$a;->Bh:J

    .line 696
    :cond_0
    return-void
.end method

.method private F(I)V
    .locals 6

    .prologue
    .line 730
    iget-wide v0, p0, Lmiui/net/http/HttpSession$a;->Bh:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lmiui/net/http/HttpSession$a;->Ce:Lmiui/net/http/HttpSession$ProgressListener;

    if-eqz v0, :cond_1

    .line 731
    iget-wide v0, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lmiui/net/http/HttpSession$a;->Bh:J

    div-long/2addr v0, v2

    .line 732
    iget-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cg:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const/16 v2, 0x400

    if-le p1, v2, :cond_1

    .line 733
    :cond_0
    iput-wide v0, p0, Lmiui/net/http/HttpSession$a;->Cg:J

    .line 734
    iget-object v0, p0, Lmiui/net/http/HttpSession$a;->Ce:Lmiui/net/http/HttpSession$ProgressListener;

    iget-wide v2, p0, Lmiui/net/http/HttpSession$a;->Bh:J

    iget-wide v4, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    invoke-interface {v0, v2, v3, v4, v5}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 737
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lmiui/net/http/HttpSession$a;->Ch:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 726
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 727
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 716
    if-lez v0, :cond_0

    .line 717
    iget-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    .line 718
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/net/http/HttpSession$a;->F(I)V

    .line 720
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/net/http/HttpSession$a;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 706
    if-lez v0, :cond_0

    .line 707
    iget-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/HttpSession$a;->Cf:J

    .line 708
    invoke-direct {p0, v0}, Lmiui/net/http/HttpSession$a;->F(I)V

    .line 710
    :cond_0
    return v0
.end method

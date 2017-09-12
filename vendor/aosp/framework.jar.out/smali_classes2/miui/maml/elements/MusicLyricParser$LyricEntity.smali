.class public Lmiui/maml/elements/MusicLyricParser$LyricEntity;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricEntity"
.end annotation


# static fields
.field private static final HTML_BR_PATTERN:Ljava/lang/String; = "%s<br/>"


# instance fields
.field public lyric:Ljava/lang/CharSequence;

.field public time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 59
    iput-object p2, p0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 60
    return-void
.end method


# virtual methods
.method public decorate()V
    .locals 4

    .prologue
    .line 63
    const-string v0, "%s<br/>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method

.method public isDecorated()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

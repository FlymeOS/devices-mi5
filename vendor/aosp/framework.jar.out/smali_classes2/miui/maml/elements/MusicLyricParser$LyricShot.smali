.class public Lmiui/maml/elements/MusicLyricParser$LyricShot;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricShot"
.end annotation


# instance fields
.field public lineIndex:I

.field public percent:D


# direct methods
.method public constructor <init>(ID)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "p"    # D

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 46
    iput-wide p2, p0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 47
    return-void
.end method

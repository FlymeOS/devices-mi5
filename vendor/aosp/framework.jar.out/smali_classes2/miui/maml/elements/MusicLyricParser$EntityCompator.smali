.class Lmiui/maml/elements/MusicLyricParser$EntityCompator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntityCompator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 455
    check-cast p1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$EntityCompator;->compare(Lmiui/maml/elements/MusicLyricParser$LyricEntity;Lmiui/maml/elements/MusicLyricParser$LyricEntity;)I

    move-result v0

    return v0
.end method

.method public compare(Lmiui/maml/elements/MusicLyricParser$LyricEntity;Lmiui/maml/elements/MusicLyricParser$LyricEntity;)I
    .locals 2
    .param p1, "obj1"    # Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    .param p2, "obj2"    # Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    .prologue
    .line 458
    iget v0, p1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget v1, p2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr v0, v1

    return v0
.end method

.class Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumInfo"
.end annotation


# instance fields
.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/MusicControlScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/MusicControlScreenElement$1;

    .prologue
    .line 242
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>()V

    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 249
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 250
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 251
    :cond_2
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 254
    .local v0, "change":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 255
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    .line 257
    iput-object p3, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    .line 259
    :cond_4
    return v0

    .line 251
    .end local v0    # "change":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

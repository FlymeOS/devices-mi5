.class final Lcom/miui/player/content/a;
.super Ljava/lang/Object;
.source "MusicMeta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/player/content/a;->t(Landroid/os/Parcel;)Lcom/miui/player/content/MusicMeta;

    move-result-object v0

    return-object v0
.end method

.method public eD(I)[Lcom/miui/player/content/MusicMeta;
    .locals 1

    .prologue
    .line 131
    new-array v0, p1, [Lcom/miui/player/content/MusicMeta;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/player/content/a;->eD(I)[Lcom/miui/player/content/MusicMeta;

    move-result-object v0

    return-object v0
.end method

.method public t(Landroid/os/Parcel;)Lcom/miui/player/content/MusicMeta;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/miui/player/content/MusicMeta;

    invoke-direct {v0, p1}, Lcom/miui/player/content/MusicMeta;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

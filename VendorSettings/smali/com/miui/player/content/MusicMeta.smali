.class public Lcom/miui/player/content/MusicMeta;
.super Ljava/lang/Object;
.source "MusicMeta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final aWH:Ljava/lang/String;

.field public final aWI:Ljava/lang/String;

.field public final aWJ:Ljava/lang/String;

.field public final aWK:Ljava/lang/String;

.field public final aWL:I

.field public final aWM:Ljava/lang/String;

.field public final aWN:D

.field public final bN:I

.field public final mData:Ljava/lang/String;

.field public final mDuration:J

.field private mString:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/miui/player/content/a;

    invoke-direct {v0}, Lcom/miui/player/content/a;-><init>()V

    sput-object v0, Lcom/miui/player/content/MusicMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWH:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWI:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWJ:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/player/content/MusicMeta;->bN:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWK:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/content/MusicMeta;->mDuration:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/player/content/MusicMeta;->aWL:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWM:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/content/MusicMeta;->aWN:D

    .line 120
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/miui/player/content/MusicMeta;

    if-nez v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/miui/player/content/MusicMeta;

    .line 68
    iget v2, p0, Lcom/miui/player/content/MusicMeta;->bN:I

    iget v3, p1, Lcom/miui/player/content/MusicMeta;->bN:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aWH:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aWH:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aWI:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aWI:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aWJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aWJ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aWK:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aWK:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/miui/player/content/MusicMeta;->mDuration:J

    iget-wide v4, p1, Lcom/miui/player/content/MusicMeta;->mDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/miui/player/content/MusicMeta;->aWL:I

    iget v3, p1, Lcom/miui/player/content/MusicMeta;->aWL:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/miui/player/content/MusicMeta;->bN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-wide v0, p0, Lcom/miui/player/content/MusicMeta;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget v0, p0, Lcom/miui/player/content/MusicMeta;->aWL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aWM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Lcom/miui/player/content/MusicMeta;->aWN:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 106
    return-void
.end method

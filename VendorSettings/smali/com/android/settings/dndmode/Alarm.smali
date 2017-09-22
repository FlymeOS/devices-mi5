.class public final Lcom/android/settings/dndmode/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public ZX:I

.field public ZY:Lcom/android/settings/dndmode/b;

.field public ZZ:Landroid/net/Uri;

.field public aaa:Z

.field public aab:Z

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/settings/dndmode/a;

    invoke-direct {v0}, Lcom/android/settings/dndmode/a;-><init>()V

    sput-object v0, Lcom/android/settings/dndmode/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dndmode/Alarm;->id:I

    .line 224
    iput-boolean v5, p0, Lcom/android/settings/dndmode/Alarm;->enabled:Z

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 227
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dndmode/Alarm;->hour:I

    .line 228
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dndmode/Alarm;->minutes:I

    .line 229
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/Alarm;->ZX:I

    .line 230
    iput-boolean v5, p0, Lcom/android/settings/dndmode/Alarm;->vibrate:Z

    .line 231
    new-instance v0, Lcom/android/settings/dndmode/b;

    invoke-direct {v0, v4}, Lcom/android/settings/dndmode/b;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/dndmode/Alarm;->ZY:Lcom/android/settings/dndmode/b;

    .line 232
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/Alarm;->ZZ:Landroid/net/Uri;

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/dndmode/Alarm;->label:Ljava/lang/String;

    .line 234
    iput-boolean v4, p0, Lcom/android/settings/dndmode/Alarm;->aab:Z

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/Alarm;->id:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->enabled:Z

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/Alarm;->hour:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/Alarm;->minutes:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dndmode/Alarm;->ZX:I

    .line 212
    new-instance v0, Lcom/android/settings/dndmode/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/settings/dndmode/b;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/dndmode/Alarm;->ZY:Lcom/android/settings/dndmode/b;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/dndmode/Alarm;->time:J

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->vibrate:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/Alarm;->label:Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/dndmode/Alarm;->ZZ:Landroid/net/Uri;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->aaa:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/dndmode/Alarm;->aab:Z

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 208
    goto :goto_0

    :cond_1
    move v0, v2

    .line 214
    goto :goto_1

    :cond_2
    move v0, v2

    .line 217
    goto :goto_2

    :cond_3
    move v1, v2

    .line 218
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    instance-of v1, p1, Lcom/android/settings/dndmode/Alarm;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    check-cast p1, Lcom/android/settings/dndmode/Alarm;

    .line 253
    iget v1, p0, Lcom/android/settings/dndmode/Alarm;->id:I

    iget v2, p1, Lcom/android/settings/dndmode/Alarm;->id:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/settings/dndmode/Alarm;->id:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget v0, p0, Lcom/android/settings/dndmode/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/android/settings/dndmode/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/android/settings/dndmode/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/android/settings/dndmode/Alarm;->ZX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/dndmode/Alarm;->ZY:Lcom/android/settings/dndmode/b;

    invoke-virtual {v0}, Lcom/android/settings/dndmode/b;->pS()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v4, p0, Lcom/android/settings/dndmode/Alarm;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/dndmode/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/dndmode/Alarm;->ZZ:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->aaa:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/dndmode/Alarm;->aab:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0

    :cond_1
    move v0, v2

    .line 44
    goto :goto_1

    :cond_2
    move v0, v2

    .line 47
    goto :goto_2

    :cond_3
    move v1, v2

    .line 48
    goto :goto_3
.end method

.class final Lcom/android/vendorsettings/dndmode/a;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bV(I)[Lcom/android/vendorsettings/dndmode/Alarm;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/android/vendorsettings/dndmode/Alarm;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dndmode/a;->o(Landroid/os/Parcel;)Lcom/android/vendorsettings/dndmode/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dndmode/a;->bV(I)[Lcom/android/vendorsettings/dndmode/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/os/Parcel;)Lcom/android/vendorsettings/dndmode/Alarm;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/vendorsettings/dndmode/Alarm;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/dndmode/Alarm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

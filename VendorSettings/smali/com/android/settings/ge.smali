.class final Lcom/android/settings/ge;
.super Ljava/lang/Object;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(I)[Lcom/android/settings/PointerSpeedPreference$SavedState;
    .locals 1

    .prologue
    .line 180
    new-array v0, p1, [Lcom/android/settings/PointerSpeedPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/ge;->d(Landroid/os/Parcel;)Lcom/android/settings/PointerSpeedPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Parcel;)Lcom/android/settings/PointerSpeedPreference$SavedState;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/ge;->aa(I)[Lcom/android/settings/PointerSpeedPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

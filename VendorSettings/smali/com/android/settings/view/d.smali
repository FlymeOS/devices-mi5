.class final Lcom/android/settings/view/d;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/view/d;->p(Landroid/os/Parcel;)Lcom/android/settings/view/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public df(I)[Lcom/android/settings/view/SeekBarPreference$SavedState;
    .locals 1

    .prologue
    .line 223
    new-array v0, p1, [Lcom/android/settings/view/SeekBarPreference$SavedState;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/view/d;->df(I)[Lcom/android/settings/view/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/os/Parcel;)Lcom/android/settings/view/SeekBarPreference$SavedState;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/android/settings/view/SeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings/view/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

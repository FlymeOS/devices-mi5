.class final Lcom/android/vendorsettings/hj;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ad(I)[Lcom/android/vendorsettings/SeekBarPreference$SavedState;
    .locals 1

    .prologue
    .line 228
    new-array v0, p1, [Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/hj;->e(Landroid/os/Parcel;)Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Parcel;)Lcom/android/vendorsettings/SeekBarPreference$SavedState;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/hj;->ad(I)[Lcom/android/vendorsettings/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/vendorsettings/display/c;
.super Ljava/lang/Object;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bD(I)[Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;
    .locals 1

    .prologue
    .line 323
    new-array v0, p1, [Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/display/c;->m(Landroid/os/Parcel;)Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/os/Parcel;)Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/display/c;->bD(I)[Lcom/android/vendorsettings/display/BrightnessFragment$SavedState;

    move-result-object v0

    return-object v0
.end method

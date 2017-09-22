.class final Lcom/android/settings/display/j;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bF(I)[Lcom/android/settings/display/FluencyModeListPreference$SavedState;
    .locals 1

    .prologue
    .line 104
    new-array v0, p1, [Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/display/j;->n(Landroid/os/Parcel;)Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/os/Parcel;)Lcom/android/settings/display/FluencyModeListPreference$SavedState;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings/display/FluencyModeListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/display/j;->bF(I)[Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

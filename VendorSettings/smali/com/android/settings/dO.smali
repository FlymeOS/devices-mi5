.class final Lcom/android/vendorsettings/dO;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(I)[Lcom/android/vendorsettings/LockPatternView$SavedState;
    .locals 1

    .prologue
    .line 962
    new-array v0, p1, [Lcom/android/vendorsettings/LockPatternView$SavedState;

    return-object v0
.end method

.method public c(Landroid/os/Parcel;)Lcom/android/vendorsettings/LockPatternView$SavedState;
    .locals 2

    .prologue
    .line 958
    new-instance v0, Lcom/android/vendorsettings/LockPatternView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/vendorsettings/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/vendorsettings/dM;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dO;->c(Landroid/os/Parcel;)Lcom/android/vendorsettings/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dO;->Q(I)[Lcom/android/vendorsettings/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/vendorsettings/widget/q;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/q;->q(Landroid/os/Parcel;)Lcom/android/vendorsettings/widget/ScreenView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public du(I)[Lcom/android/vendorsettings/widget/ScreenView$SavedState;
    .locals 1

    .prologue
    .line 1968
    new-array v0, p1, [Lcom/android/vendorsettings/widget/ScreenView$SavedState;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/q;->du(I)[Lcom/android/vendorsettings/widget/ScreenView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/os/Parcel;)Lcom/android/vendorsettings/widget/ScreenView$SavedState;
    .locals 2

    .prologue
    .line 1964
    new-instance v0, Lcom/android/vendorsettings/widget/ScreenView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/vendorsettings/widget/l;)V

    return-object v0
.end method

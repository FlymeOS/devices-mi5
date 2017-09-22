.class Lcom/android/settings/widget/ScreenView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ScreenView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1961
    new-instance v0, Lcom/android/settings/widget/q;

    invoke-direct {v0}, Lcom/android/settings/widget/q;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ScreenView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1979
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/ScreenView$SavedState;->currentScreen:I

    .line 1980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ScreenView$SavedState;->currentScreen:I

    .line 1981
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/widget/l;)V
    .locals 0

    .prologue
    .line 1959
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1975
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/ScreenView$SavedState;->currentScreen:I

    .line 1976
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1985
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1986
    iget v0, p0, Lcom/android/settings/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    return-void
.end method

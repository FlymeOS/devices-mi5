.class final Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ax(I)[Lcom/android/settings/accessibility/ListDialogPreference$SavedState;
    .locals 1

    .prologue
    .line 320
    new-array v0, p1, [Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;->f(Landroid/os/Parcel;)Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/os/Parcel;)Lcom/android/settings/accessibility/ListDialogPreference$SavedState;
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;->ax(I)[Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

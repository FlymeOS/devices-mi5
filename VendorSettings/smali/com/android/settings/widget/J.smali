.class final Lcom/android/settings/widget/J;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/J;->r(Landroid/os/Parcel;)Lcom/android/settings/widget/SwitchBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public dx(I)[Lcom/android/settings/widget/SwitchBar$SavedState;
    .locals 1

    .prologue
    .line 253
    new-array v0, p1, [Lcom/android/settings/widget/SwitchBar$SavedState;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/J;->dx(I)[Lcom/android/settings/widget/SwitchBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/os/Parcel;)Lcom/android/settings/widget/SwitchBar$SavedState;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/android/settings/widget/SwitchBar$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/settings/widget/H;)V

    return-object v0
.end method

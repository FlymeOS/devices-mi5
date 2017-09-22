.class Lcom/android/vendorsettings/AppListPreference$SavedState;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final ba:[Ljava/lang/CharSequence;

.field public final bb:Ljava/lang/CharSequence;

.field public final bc:Z

.field public final bd:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/android/vendorsettings/C;

    invoke-direct {v0}, Lcom/android/vendorsettings/C;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/AppListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->ba:[Ljava/lang/CharSequence;

    .line 177
    iput-object p2, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->bb:Ljava/lang/CharSequence;

    .line 178
    iput-boolean p3, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->bc:Z

    .line 179
    iput-object p4, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->bd:Landroid/os/Parcelable;

    .line 180
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->ba:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->bb:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 191
    iget-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->bc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreference$SavedState;->bd:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

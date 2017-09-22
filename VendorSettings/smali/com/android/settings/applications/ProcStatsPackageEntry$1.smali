.class final Lcom/android/settings/applications/ProcStatsPackageEntry$1;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aZ(I)[Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 1

    .prologue
    .line 159
    new-array v0, p1, [Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;->j(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;->aZ(I)[Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

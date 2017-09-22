.class final Lcom/android/vendorsettings/applications/ProcStatsEntry$Service$1;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aY(I)[Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;
    .locals 1

    .prologue
    .line 343
    new-array v0, p1, [Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service$1;->i(Landroid/os/Parcel;)Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/os/Parcel;)Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service$1;->aY(I)[Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    move-result-object v0

    return-object v0
.end method

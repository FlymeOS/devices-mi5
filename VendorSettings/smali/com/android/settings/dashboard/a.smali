.class final Lcom/android/vendorsettings/dashboard/a;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bq(I)[Lcom/android/vendorsettings/dashboard/DashboardCategory;
    .locals 1

    .prologue
    .line 155
    new-array v0, p1, [Lcom/android/vendorsettings/dashboard/DashboardCategory;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dashboard/a;->k(Landroid/os/Parcel;)Lcom/android/vendorsettings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/os/Parcel;)Lcom/android/vendorsettings/dashboard/DashboardCategory;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/vendorsettings/dashboard/DashboardCategory;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/dashboard/DashboardCategory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dashboard/a;->bq(I)[Lcom/android/vendorsettings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

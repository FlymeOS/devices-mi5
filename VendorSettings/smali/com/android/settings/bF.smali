.class final Lcom/android/vendorsettings/bF;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/android/vendorsettings/DataUsageSummary$AppItem;
    .locals 1

    .prologue
    .line 1725
    new-instance v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bF;->b(Landroid/os/Parcel;)Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bF;->w(I)[Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public w(I)[Lcom/android/vendorsettings/DataUsageSummary$AppItem;
    .locals 1

    .prologue
    .line 1730
    new-array v0, p1, [Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    return-object v0
.end method

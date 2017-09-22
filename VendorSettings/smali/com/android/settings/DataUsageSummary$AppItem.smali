.class public Lcom/android/vendorsettings/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public category:I

.field public ij:Z

.field public ik:Landroid/util/SparseBooleanArray;

.field public il:J

.field public final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1722
    new-instance v0, Lcom/android/vendorsettings/bF;

    invoke-direct {v0}, Lcom/android/vendorsettings/bF;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    .line 1684
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    .line 1685
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    .line 1688
    iput p1, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    .line 1689
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    .line 1692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    .line 1693
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    .line 1694
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    .line 1695
    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/DataUsageSummary$AppItem;)I
    .locals 4

    .prologue
    .line 1715
    iget v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->category:I

    iget v1, p1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->category:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1716
    if-nez v0, :cond_0

    .line 1717
    iget-wide v0, p1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    iget-wide v2, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1719
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1671
    check-cast p1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->a(Lcom/android/vendorsettings/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1710
    const/4 v0, 0x0

    return v0
.end method

.method public v(I)V
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1699
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1703
    iget v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ik:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1705
    iget-wide v0, p0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1706
    return-void
.end method

.class public Lcom/android/vendorsettings/dashboard/DashboardCategory;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public UD:I

.field public UE:Ljava/util/List;

.field public id:J

.field public key:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/vendorsettings/dashboard/a;

    invoke-direct {v0}, Lcom/android/vendorsettings/dashboard/a;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->id:J

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UD:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->id:J

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UD:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dashboard/DashboardCategory;->readFromParcel(Landroid/os/Parcel;)V

    .line 147
    return-void
.end method


# virtual methods
.method public a(ILcom/android/vendorsettings/dashboard/DashboardTile;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public b(Lcom/android/vendorsettings/dashboard/DashboardTile;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public bo(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public bp(I)Lcom/android/vendorsettings/dashboard/DashboardTile;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dashboard/DashboardTile;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public oO()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->titleRes:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UD:I

    .line 134
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 140
    sget-object v0, Lcom/android/vendorsettings/dashboard/DashboardTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dashboard/DashboardTile;

    .line 141
    iget-object v3, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 117
    iget v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/DashboardCategory;->UE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dashboard/DashboardTile;

    .line 127
    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/dashboard/DashboardTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

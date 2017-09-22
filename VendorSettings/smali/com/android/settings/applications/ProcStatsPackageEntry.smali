.class public Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static DEBUG:Z


# instance fields
.field final HJ:Ljava/util/ArrayList;

.field LA:J

.field LB:D

.field public LD:Landroid/content/pm/ApplicationInfo;

.field public LE:Ljava/lang/String;

.field private LF:J

.field Lu:J

.field Lv:J

.field Lw:J

.field Lx:D

.field Ly:J

.field Lz:J

.field final mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->DEBUG:Z

    .line 152
    new-instance v0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry$1;

    invoke-direct {v0}, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry$1;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/vendorsettings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lu:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lw:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lx:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Ly:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LA:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LB:D

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 55
    iput-wide p2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LF:J

    .line 56
    return-void
.end method

.method public static a(FLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    .line 165
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 166
    const v0, 0x7f0c0b2d

    new-array v1, v1, [Ljava/lang/Object;

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/vendorsettings/iC;->ar(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 169
    const v0, 0x7f0c0b2e

    new-array v1, v1, [Ljava/lang/Object;

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/vendorsettings/iC;->ar(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    const v0, 0x7f0c0b2f

    new-array v1, v1, [Ljava/lang/Object;

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/vendorsettings/iC;->ar(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LD:Landroid/content/pm/ApplicationInfo;

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LE:Ljava/lang/String;

    .line 116
    :try_start_0
    const-string v0, "os"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "android"

    const v1, 0xa200

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LD:Landroid/content/pm/ApplicationInfo;

    .line 121
    const v0, 0x7f0c0772

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LE:Ljava/lang/String;

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const v1, 0xa200

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LD:Landroid/content/pm/ApplicationInfo;

    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LD:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LE:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/android/vendorsettings/applications/ProcStatsEntry;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public lc()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lw:J

    iput-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    iput-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lu:J

    .line 87
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lx:D

    .line 88
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LA:J

    iput-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    iput-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Ly:J

    .line 89
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LB:D

    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 91
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    .line 93
    iget-wide v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    iget-wide v6, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lu:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lu:J

    .line 94
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    iget-wide v6, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    .line 95
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lx:D

    iget-wide v6, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lx:D

    .line 96
    iget-wide v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    iget-wide v6, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Ly:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Ly:J

    .line 97
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    iget-wide v6, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lz:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    .line 98
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LB:D

    iget-wide v6, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LB:D

    .line 104
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lw:J

    iget-wide v6, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lw:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lw:J

    .line 105
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LA:J

    iget-wide v6, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LA:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LA:J

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    int-to-long v4, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    .line 108
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 142
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lu:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lx:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 146
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Ly:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->Lz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LA:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsPackageEntry;->LB:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 150
    return-void
.end method

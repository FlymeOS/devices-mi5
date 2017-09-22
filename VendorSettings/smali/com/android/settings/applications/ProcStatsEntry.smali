.class public final Lcom/android/vendorsettings/applications/ProcStatsEntry;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static DEBUG:Z


# instance fields
.field final LA:J

.field final LB:D

.field LC:Ljava/lang/String;

.field final Lt:Ljava/util/ArrayList;

.field final Lu:J

.field final Lv:J

.field final Lw:J

.field final Lx:D

.field final Ly:J

.field final Lz:J

.field public mLabel:Ljava/lang/CharSequence;

.field final mName:Ljava/lang/String;

.field final mPackage:Ljava/lang/String;

.field mServices:Landroid/util/ArrayMap;

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    .line 290
    new-instance v0, Lcom/android/vendorsettings/applications/ProcStatsEntry$1;

    invoke-direct {v0}, Lcom/android/vendorsettings/applications/ProcStatsEntry$1;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lw:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lz:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LA:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    if-lez v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 103
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    sget-object v4, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 107
    iget-object v4, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 57
    invoke-static {p1, p3, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 58
    invoke-static {p1, p4, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 59
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 60
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iput v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    .line 61
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    .line 64
    if-eqz p5, :cond_1

    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    :goto_0
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    .line 65
    if-eqz p5, :cond_2

    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    :goto_1
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lw:J

    .line 66
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    .line 67
    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    .line 68
    if-eqz p5, :cond_3

    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    :goto_2
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lz:J

    .line 69
    if-eqz p5, :cond_4

    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    :goto_3
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LA:J

    .line 70
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lz:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    .line 71
    sget-boolean v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New proc entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " avgpss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    goto :goto_0

    .line 65
    :cond_2
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    goto :goto_1

    .line 68
    :cond_3
    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    goto :goto_2

    .line 69
    :cond_4
    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 76
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    .line 78
    iput-object p3, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 79
    iput-wide p4, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    iput-wide p4, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    .line 80
    iput-wide p6, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LA:J

    iput-wide p6, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lz:J

    iput-wide p6, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lw:J

    iput-wide p6, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    .line 81
    long-to-double v0, p4

    long-to-double v2, p6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    .line 82
    sget-boolean v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New proc entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " avgpss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V
    .locals 18

    .prologue
    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 122
    sget-boolean v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v3, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval pkg of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": single pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 130
    const-string v3, "android"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 138
    const/4 v2, 0x0

    move v9, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 139
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/util/SparseArray;

    .line 141
    const/4 v2, 0x0

    move v10, v2

    :goto_3
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

    .line 142
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 143
    sget-boolean v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ProcStatsEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eval pkg of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pkg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_5
    if-nez v4, :cond_6

    .line 146
    const-string v3, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package state found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_4
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_3

    .line 150
    :cond_6
    iget-object v2, v4, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 151
    if-nez v3, :cond_7

    .line 152
    const-string v3, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found in package state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 156
    :cond_7
    new-instance v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/vendorsettings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Z)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 138
    :cond_8
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_2

    .line 161
    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f

    .line 162
    move-object/from16 v0, p5

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-wide v4, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-wide v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v6

    cmpl-double v2, v4, v2

    if-lez v2, :cond_b

    .line 164
    sget-boolean v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v3, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval pkg of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": best pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " weight "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-wide v6, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " better than "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " weight "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-wide v6, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    goto/16 :goto_0

    .line 174
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-wide v14, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    .line 175
    const-wide/16 v4, -0x1

    .line 176
    const/4 v3, 0x0

    .line 177
    const/4 v2, 0x0

    move v6, v3

    move-wide v8, v4

    move v5, v2

    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_1

    .line 178
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    .line 179
    iget-wide v10, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v14, v16

    cmpg-double v3, v10, v16

    if-gez v3, :cond_c

    .line 180
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " weight "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " too small"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    move-wide v6, v8

    .line 177
    :goto_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v8, v6

    move v6, v3

    goto :goto_5

    .line 186
    :cond_c
    :try_start_0
    iget-object v3, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 187
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v4, :cond_e

    .line 188
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " has no icon"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v3, v6

    move-wide v6, v8

    .line 190
    goto :goto_6

    .line 192
    :cond_e
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_14

    .line 193
    iget-wide v10, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    .line 194
    if-eqz v6, :cond_f

    cmp-long v3, v10, v8

    if-lez v3, :cond_12

    .line 195
    :cond_f
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " new best pers run time "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_10
    const/4 v6, 0x1

    move-wide v8, v10

    :cond_11
    :goto_7
    move v3, v6

    move-wide v6, v8

    .line 205
    goto/16 :goto_6

    .line 201
    :cond_12
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " pers run time "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " not as good as last "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 211
    :catch_0
    move-exception v3

    .line 212
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed finding app info"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v3, v6

    move-wide v6, v8

    .line 214
    goto/16 :goto_6

    .line 206
    :cond_14
    if-eqz v6, :cond_16

    .line 207
    :try_start_1
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_15

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is not persistent"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_15
    move v3, v6

    move-wide v6, v8

    .line 209
    goto/16 :goto_6

    .line 216
    :cond_16
    const/4 v7, 0x0

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move v10, v3

    :goto_8
    if-ge v10, v11, :cond_17

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 219
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v7, v3

    .line 224
    :cond_17
    const-wide/16 v10, 0x0

    .line 225
    if-eqz v7, :cond_19

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v4, v3

    :goto_9
    if-ge v4, v13, :cond_19

    .line 227
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    .line 228
    iget-wide v0, v3, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v10

    if-lez v16, :cond_1c

    .line 229
    sget-boolean v4, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v4, :cond_18

    const-string v4, "ProcStatsEntry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Eval pkg of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": pkg "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " service "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v3, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " run time is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v3, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_18
    iget-wide v10, v3, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 237
    :cond_19
    cmp-long v3, v10, v8

    if-lez v3, :cond_1d

    .line 238
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " new best run time "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1a
    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    move v3, v6

    move-wide v6, v10

    .line 241
    goto/16 :goto_6

    .line 217
    :cond_1b
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_8

    .line 226
    :cond_1c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_9

    .line 243
    :cond_1d
    sget-boolean v3, Lcom/android/vendorsettings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " run time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not as good as last "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move v3, v6

    move-wide v6, v8

    goto/16 :goto_6

    .line 248
    :cond_1f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 249
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public a(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 255
    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    new-instance v1, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;

    invoke-direct {v1, p1}, Lcom/android/vendorsettings/applications/ProcStatsEntry$Service;-><init>(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lt:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 273
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lu:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lx:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 277
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Ly:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->Lz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LA:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LB:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 281
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 283
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

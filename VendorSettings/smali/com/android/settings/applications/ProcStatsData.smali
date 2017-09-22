.class public Lcom/android/settings/applications/ProcStatsData;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# static fields
.field private static La:Lcom/android/internal/app/ProcessStats;

.field static final Li:Ljava/util/Comparator;


# instance fields
.field private Lb:J

.field private Lc:Lcom/android/internal/app/IProcessStats;

.field private Ld:Z

.field private Le:[I

.field private Lf:[I

.field private Lg:Lcom/android/settings/applications/ProcStatsData$MemInfo;

.field private Lh:Ljava/util/ArrayList;

.field private i:Landroid/content/pm/PackageManager;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mStats:Lcom/android/internal/app/ProcessStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/android/settings/applications/ProcStatsData$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsData$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->Li:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->i:Landroid/content/pm/PackageManager;

    .line 75
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Lc:Lcom/android/internal/app/IProcessStats;

    .line 77
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Le:[I

    .line 78
    sget-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Lf:[I

    .line 79
    if-eqz p2, :cond_0

    .line 80
    sget-object v0, Lcom/android/settings/applications/ProcStatsData;->La:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 82
    :cond_0
    return-void
.end method

.method private a(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 12

    .prologue
    .line 186
    new-instance v8, Lcom/android/settings/applications/ProcStatsPackageEntry;

    const-string v0, "os"

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    invoke-direct {v8, v0, v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 188
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0773

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    iget-wide v6, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v10, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings/applications/ProcStatsData;->Li:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings/applications/ProcStatsData;->Ld:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/ProcStatsEntry;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 193
    invoke-virtual {v8, v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->a(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 195
    :cond_0
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 196
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0774

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    iget-wide v6, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v10, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings/applications/ProcStatsData;->Li:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings/applications/ProcStatsData;->Ld:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/ProcStatsEntry;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 200
    invoke-virtual {v8, v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->a(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 202
    :cond_1
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 203
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0775

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    iget-wide v6, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v10, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings/applications/ProcStatsData;->Li:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings/applications/ProcStatsData;->Ld:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/ProcStatsEntry;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 207
    invoke-virtual {v8, v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->a(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 209
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 210
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0776

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    const-wide/16 v6, 0x400

    div-long v6, p4, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings/applications/ProcStatsData;->Li:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings/applications/ProcStatsData;->Ld:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/ProcStatsEntry;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 214
    invoke-virtual {v8, v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->a(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 216
    :cond_3
    return-object v8
.end method

.method private a(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;
    .locals 18

    .prologue
    .line 221
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v16, Lcom/android/internal/app/ProcessMap;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/util/SparseArray;

    .line 228
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 229
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/util/SparseArray;

    .line 230
    const/4 v2, 0x0

    move v12, v2

    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 231
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 232
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    iget-object v2, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v13, v2, :cond_3

    .line 233
    iget-object v2, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 236
    if-nez v3, :cond_1

    .line 237
    const-string v3, "ProcStatsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No process found for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proc name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 241
    :cond_1
    iget-object v2, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v4, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 242
    if-nez v2, :cond_2

    .line 243
    new-instance v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/applications/ProcStatsData;->Ld:Z

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Z)V

    .line 245
    iget-wide v4, v2, Lcom/android/settings/applications/ProcStatsEntry;->LB:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 252
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 256
    :cond_2
    iget-object v3, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 230
    :cond_3
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_2

    .line 228
    :cond_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_1

    .line 225
    :cond_5
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_0

    .line 266
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move v10, v2

    :goto_5
    if-ge v10, v11, :cond_c

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 269
    const/4 v3, 0x0

    move v7, v3

    :goto_6
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v7, v3, :cond_b

    .line 270
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 271
    const/4 v4, 0x0

    move v8, v4

    :goto_7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v8, v4, :cond_a

    .line 272
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 273
    const/4 v5, 0x0

    iget-object v6, v4, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v12

    move v9, v5

    :goto_8
    if-ge v9, v12, :cond_9

    .line 274
    iget-object v5, v4, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 275
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 276
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    .line 278
    if-eqz v6, :cond_8

    .line 282
    invoke-virtual {v6, v5}, Lcom/android/settings/applications/ProcStatsEntry;->a(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 273
    :cond_7
    :goto_9
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_8

    .line 284
    :cond_8
    const-string v6, "ProcStatsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No process "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v5, v5, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 271
    :cond_9
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_7

    .line 269
    :cond_a
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_6

    .line 266
    :cond_b
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_5

    .line 293
    :cond_c
    return-object v15
.end method

.method private a(Ljava/util/ArrayList;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)V
    .locals 9

    .prologue
    .line 169
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_1

    .line 171
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    .line 172
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings/applications/ProcStatsData;->Li:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings/applications/ProcStatsData;->Ld:Z

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/ProcStatsEntry;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 173
    iget-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 174
    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    invoke-direct {v1, v2, v4, v5}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 176
    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->LC:Ljava/lang/String;

    invoke-virtual {v8, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->Lh:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->a(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 170
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method private load()V
    .locals 4

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Lc:Lcom/android/internal/app/IProcessStats;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 300
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "ProcStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure reading process stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    :cond_0
    :goto_1
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v1, "ProcStatsManager"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public as(Z)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcStatsData;->load()V

    .line 141
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->Lh:Ljava/util/ArrayList;

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 145
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v1, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v3, v1, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object v1, v0

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    .line 148
    new-instance v3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->Le:[I

    invoke-direct {v3, v1, v2}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v1, v3, v6, v7}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 152
    new-instance v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lb:J

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->Lg:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    .line 154
    new-instance v1, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->Le:[I

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->Lf:[I

    invoke-direct {v1, v0, v2, v4}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 156
    new-instance v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->Le:[I

    sget-object v5, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 159
    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->a(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->a(Ljava/util/ArrayList;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Lg:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-wide v4, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Lm:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ProcStatsData;->a(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->Lh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    return-wide v0
.end method

.method public kY()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->La:Lcom/android/internal/app/ProcessStats;

    .line 90
    return-void
.end method

.method public kZ()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 104
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 108
    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public la()Lcom/android/settings/applications/ProcStatsData$MemInfo;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Lg:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    return-object v0
.end method

.method public lb()Ljava/util/List;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->Lh:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 3

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 123
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcStatsData;->as(Z)V

    .line 126
    :cond_0
    return-void
.end method

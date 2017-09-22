.class Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic IQ:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 872
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 886
    :goto_0
    return-void

    .line 875
    :cond_0
    if-eqz p1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iput-object p1, v0, Lcom/android/settings/applications/InstalledAppDetails;->IN:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 877
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 878
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->LB:D

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->Lx:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v2, v2, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->la()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->Lq:D

    mul-double/2addr v0, v2

    .line 880
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    const v4, 0x7f0c0b56

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    double-to-long v0, v0

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 884
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    const v2, 0x7f0c0b57

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 844
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->e([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method protected varargs e([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 867
    :goto_0
    return-object v0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 852
    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    if-nez v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    new-instance v1, Lcom/android/settings/applications/ProcStatsData;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    .line 856
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->LH:[J

    aget-wide v4, v1, v4

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->as(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->lb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 860
    iget-object v1, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    .line 861
    iget v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->IQ:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v5, :cond_4

    .line 862
    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsPackageEntry;->lc()V

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 867
    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 844
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->a(Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    return-void
.end method
